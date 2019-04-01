""" BrERP Maven converter

With the new Maven build defined as default for newest releases of the iDempiere framework (>= 6.1)
we needed to migrate our (more than 40 different customers projects) customers to this new architecture.

This script allows easy this job doing an automated migration and the programmer just needs 
to review the content.

By default, all our customization projects repositories contains the same set of plugins as follows:

client
        |_org.client.base
        |_org.client.base.callout
        |_org.client.base.process
        |_org.client.ui
        |_org.client.ui.zk
        |_org.client.ui.zk.resources
        |_org.client.p2.targetplatform
        |_org.client.server.feature

If your project follows this structure you just need to execute the script, that may be located at the same level as your main project folder and customer project folder, passing the customer name as parameter.

For example, if you have this :

workspace
        |_brerp_source_folder (or idempiere)
        |_client
        |_maven_converter.py

Then you can execute:

cd $workspace
python3 maven_converter.py client

And it's done!


NOTE: this script was developed for internal use at devCoffee and was published on intention to be usefull for others.

"""

from sys import argv
from os import system

BASE_FOLDERS = {
    'base': 'org.{client}.base',
    'base.callout': 'org.{client}.base.callout',
    'base.process': 'org.{client}.base.process',
    'ui': 'org.{client}.ui',
    'ui.zk': 'org.{client}.ui.zk',
    'ui.zk.resources': 'org.{client}.ui.zk.resources',
    'target': 'org.{client}.p2.targetplatform',
    'server.feature': 'org.{client}.server.feature',
}

BUCKMINSTER_FILES = [
    '*.target',
    '*.cquery',
    '*.mspec',
    '*.rmap',
    'build-target-platform.target',
    'buckminster_linux_gtk_x86_64.properties',
]

BASE_POM_TEMPLATE = ''
MAIN_POM_TEMPLATE = ''
PARENT_POM_TEMPLATE = ''
P2_SITE_POM_TEMPLATE = ''
CATEGORY_TEMPLATE = ''
client = argv[1]

def create_base_poms(base_pom_content, client):
    print('Creating Base Poms')    
    for folder in BASE_FOLDERS.values():
        pom_location = '{}/{}/pom.xml'.format(
            client,            
            folder.format(client=client),
        )

        if 'targetplatform' in folder:
            print('Creating Target Platform Directory')            
            system('mkdir {}/{}'.format(
                client,
                folder.format(client=client)
            ))     

        print('Creating pom.xml for: {}'.format(pom_location))        

        pom_packaging = ''
        if 'targetplatform' in folder:
            pom_packaging = 'eclipse-target-definition'
        elif 'feature' in folder:
            pom_packaging = 'eclipse-feature'
        else:
            pom_packaging = 'eclipse-plugin'
        
        try:        
            with open(pom_location, 'w') as base_pom:
                base_pom.write(base_pom_content.format(
                    folder=folder.format(client=client),
                    packaging=pom_packaging
               ))
        except Exception as e:
            print(e)

def create_main_pom(main_pom_content, client):
    print('Creating main pom')    
    pom_location = '{}/pom.xml'.format(client)    
    with open(pom_location, 'w') as main_pom:
        main_pom.write(main_pom_content.format(client=client))

"""
def create_parent_pom(parent_pom_content, client):
    parent_pom_location = '{}/{}/pom.xml'.format(
        client,        
        BASE_FOLDERS['parent'].format(client=client)
    )
    
    print('Creating parent pom directory')    
    system('mkdir {}/{}'.format(
        client,
        BASE_FOLDERS['parent'].format(client=client)      
    ))    
    
    print('Creating parent pom')
    with open(parent_pom_location, 'w') as parent_pom:
        parent_pom.write(parent_pom_content % (
            tuple([client for _ in range(4)])
        ))
"""

def get_pom_content():
    global BASE_POM_TEMPLATE
    global MAIN_POM_TEMPLATE
    global PARENT_POM_TEMPLATE
    global P2_SITE_POM_TEMPLATE 
    global CATEGORY_TEMPLATE

    print('Reading main_pom template')
    with open('main_pom.xml', 'r') as main_pom:
        MAIN_POM_TEMPLATE = main_pom.read()

    print('Reading base_pom template')    
    with open('base_pom.xml', 'r') as base_pom:
        BASE_POM_TEMPLATE = base_pom.read()

    print('Reading parent_pom template')
    with open('parent_pom.xml', 'r') as parent_pom:
        PARENT_POM_TEMPLATE = parent_pom.read()

    print('Reading p2_site_pom template')
    with open('p2_site_pom.xml', 'r') as p2_site_pom:
        P2_SITE_POM_TEMPLATE = p2_site_pom.read()

    print('Reading category template')
    with open('category.xml', 'r') as category_pom:
        CATEGORY_TEMPLATE = category_pom.read()

def copy_target_platform(client):
    print('Copy Target Platform')
    system('cp targetplatform.target {client}/{folder}/{folder}.target'.format(
        client=client,
        folder=BASE_FOLDERS['target'].format(client=client),
    ))


def remove_buckminster_files(client):
    print('Removing Buckminster!')
    
    server_feature_folder= '{client}/org.{client}.server.feature'.format(
        client=client
    )

    for file in BUCKMINSTER_FILES:
        print('Removind: {}'.format(file))        
        try:
            system('rm {}/{}'.format(
                server_feature_folder,
                file,
            ))
        except Exception as e:
            print(e)

    print('Buckminster removed!')

def create_p2_site(client):
    p2_site_folder = '{client}/org.{client}.p2.site'.format(client=client)
	
    print('Creating site p2')    
    system('mkdir {}'.format(p2_site_folder))
    
    print('Creating pom.xml')
    with open('{}/pom.xml'.format(p2_site_folder), 'w') as pom_file:
        pom_file.write(P2_SITE_POM_TEMPLATE.format(client=client))

    print('Creating Category.xml')
    with open('{}/category.xml'.format(p2_site_folder), 'w') as category_file:
        category_file.write(CATEGORY_TEMPLATE.format(client=client))

print('-' * 80)
print('MAVEN CONVERTER')
print('-' * 80)

get_pom_content()
create_main_pom(MAIN_POM_TEMPLATE, client)
#create_parent_pom(PARENT_POM_TEMPLATE, client)
create_base_poms(BASE_POM_TEMPLATE, client)
#copy_target_platform(client)
remove_buckminster_files(client)
create_p2_site(client)

print('-' * 80)
print('THE PROJECT {} WAS CONVERTED!'.format(client))
print('-' * 80)
