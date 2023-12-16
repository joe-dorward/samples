#!/usr/bin/python

import sys, string, codecs, StringIO
from xml.dom import minidom, Node
from xml.sax.saxutils import escape


def walkTree(node,level):                                # [2]
    level = level + 1
    node.level = level
    if node.nodeType == Node.ELEMENT_NODE:
      yield node
      for child in node.childNodes:
            for n1 in walkTree(child,level):
                yield n1
            
                
def showNode(node, outFile):                                    # [3]
    global level_3_schema, level_4_schema, level_5_schema, level_6_schema, level_7_schema, level_8_schema
    global last_node_level

    try:
        node.level
    except NameError:
        pass
    else:
        #last_node_level = 0
        # outFile.write('%i ' % node.level)
         
        if node.level == 1:
          last_node_level = 1
          # outFile.write('<%s> \n' % node.nodeName)
          
        if node.level == 2: # it's a schemalist
          #outFile.write('<?xml version=\"1.0\" encoding=\"UTF-8\"?>')
          #outFile.write('\n<node xmlns:yv=\"http://refdata.youview.com/schemas/gsettings-extensions-v1.0\">\n')
          outFile.write('<schemalist>')
          #outFile.write('\t' * 10)
          #outFile.write('[level %i]' % node.level)
          
          last_node_level = 2
            
        elif node.level == 3: # this is the parent schema 'oem', 'platform' etc.
          # check if the node is a schema
          if is_a_schema(node):
          
            if last_node_level != 2: # if it's not the first level 3 schema, close the previous one
              outFile.write('\n  </schema>')
              
            last_node_level = 3
              
            # get the name of the schema
            level_3_schema = get_schema_name(node)
            schema_dots = level_3_schema
            schema_path = level_3_schema
            
            # write schema comment ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- 
            #outFile.write('\n  <!-- %s ' % schema_dots)
            #width = 140 - len(schema_dots)
            #outFile.write('-' * width)
            #outFile.write(' [level %i schema] --> ' % node.level)
            
            # write schema tag
            outFile.write('\n  <schema id=\"com.youview.%s\" ' % schema_dots)
            outFile.write('path=\"/%s/\"> ' % schema_path)
            
            lastNodeName = ''
            # write child schema
            for child in node.childNodes:
              if child.nodeType == 8:
                nodeName = child.nodeValue
                nodeName = nodeName.strip() # remove whitespace padding
                parent, nodeName = nodeName.split('.') # split parent and node
                
                # if the node isn't a duplicate or has 'end' on the end of it - write it
                if nodeName != lastNodeName and not nodeName.endswith('end'):
                  outFile.write('\n    <child schema=\"com.youview.%s.%s" name=\"%s\" />' % (parent,nodeName,nodeName))
                  lastNodeName = nodeName
                 
                   # AND SO ON
