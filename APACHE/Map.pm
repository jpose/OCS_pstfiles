# Author: Jérémy POSE
# v1.0 / 11/08/2016

package Apache::Ocsinventory::Plugins::Pstfiles::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;
#Plugin PSTFILES
$DATA_MAP{pstfiles} = {
		mask => 0,
		multi => 1,
		auto => 1,
		delOnReplace => 1,
		sortBy => 'FILENAME',
		writeDiff => 0,
		cache => 0,
		fields => {
                        FILEPATH => {},
                        FILENAME => {},
                        FILESIZE => {},
	}
};
1;
