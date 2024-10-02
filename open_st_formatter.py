import os, re
class open_st_formatter():
    def __init__(self):
        pass

    def decl_parse(self, txt):
        #Figure out if this is, program, function, function block, method, data type or enum
        #Then parse its components
        pass
    
    def decl_format(self, fpath, outpath):
        with open(fpath, 'r') as f:
            txt = f.read()
        
        #Parse declaration to programmable format
        obj = self.decl_parse(txt)

        formatted_txt = self.decl_formatter(txt)

        with open(os.path.join(outpath, 'declout.st'), 'w') as f:
            f.write(formatted_txt)

    def decl_formatter(self, txt):
        txt = txt.replace('\t', '')
        txt = txt.replace('\n', '')

        #Add new line after every semicolon
        txt = txt.replace(';', ';\n')
        return txt

    def body_formatter(self, txt):
        return txt
    
    def body_format(self, fpath, outpath):
        with open(fpath, 'r') as f:
            txt = f.read()

        formatted_txt = self.body_formatter(txt)

        with open(os.path.join(outpath, 'bodyout.st'), 'w') as f:
            f.write(formatted_txt)





if __name__ == '__main__':

    fmt = open_st_formatter()
    fmt.decl_format('example/decl.st', 'out')
    fmt.body_format('example/body.st', 'out')