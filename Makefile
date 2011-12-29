# Set the source directory
srcdir = src/

builddir = build/

# Create the list of modules
modules =   ${srcdir}setup.js\
	    ${srcdir}ixdb.js\
	    ${srcdir}queue.js\
	    ${srcdir}client.js\
            ${srcdir}gazel.js

# Compress all of the modules into gazel.js
gazel.js: ${modules}
	cat > ${builddir}$@ $^
