# Set the source directory
srcdir = src/

builddir = build/

# Create the list of modules
modules = ${srcdir}setup.js\
          ${srcdir}handlers.js\
          ${srcdir}client.js\
	        ${srcdir}queue.js\
		      ${srcdir}dbfunctions.js\
          ${srcdir}gazel.js\
		      ${srcdir}transactions.js

# Compress all of the modules into gazel.js
gazel.js: ${modules}
	echo "/* vim: set shiftwidth=2 tabstop=2 autoindent cindent expandtab: */" > ${builddir}$@
	echo ${\n} >> ${builddir}$@
	echo "(function() {" >> ${builddir}$@
	echo "'use strict';" >> ${builddir}$@
	cat >> ${builddir}$@ $^
	echo "}).call(this);" >> ${builddir}$@

