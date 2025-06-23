RPMBUILD = rpmbuild --define "_topdir %(pwd)/build" \
        --define "_builddir %{_topdir}" \
        --define "_rpmdir %{_topdir}" \
        --define "_srcrpmdir %{_topdir}" \
        --define "_sourcedir %(pwd)"

 mono:
	mkdir -p build
	${RPMBUILD} -ba mono.spec
	mv build/*/*.rpm .
	rm -rf build

mono-bootstrap:
	mkdir -p build
	${RPMBUILD} --define "_with_bootstrap yes" -ba mono.spec
	mv build/*/*.rpm .
	rm -rf build
 
mono-basic:
	mkdir -p build
	${RPMBUILD} -ba mono-basic.spec
	mv build/*/*.rpm .
	rm -rf build

libgdiplus:
	mkdir -p build
	${RPMBUILD} -ba libgdiplus.spec
	mv build/*/*.rpm .
	rm -rf build

