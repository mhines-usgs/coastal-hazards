package gov.usgs.cida.coastalhazards.sld;

import static gov.usgs.cida.coastalhazards.Attributes.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Zack Moore <zmoore@usgs.gov>
 */
public final class TCx {

	protected static final String[] attrs = new String[]{
		TCT, TC2, TC5
	};
	protected static final float[] thresholds = new float[]{0.0f, 10.0f, 20.0f, 30.0f, 40.0f, 50.0f, 60.0f, 70.0f, 80.0f, 90.0f};
	protected static final String[] colors = {"#FFFFFF", "#FFFFB3", "#FFFF6B", "#FFFF00", "#FFBB00", "#FF6E00", "#FF0000", "#96140B", "#42130C", "#000000"};

	protected static final String jspPath = "/SLD/tcx.jsp";
	protected static final String units = "%";
	protected static final List<Map<String, Object>> bins;

	static {
		List<Map<String, Object>> binsResult = new ArrayList<Map<String, Object>>();
		for (int i = 0; i < colors.length; i++) {
			Map<String, Object> binMap = new LinkedHashMap<String, Object>();
			binMap.put("lowerBound", thresholds[i]);
			if (i < colors.length - 1) {
				binMap.put("upperBound", thresholds[i + 1]);
			}
			binMap.put("color", colors[i]);
			binsResult.add(binMap);
		}

		bins = binsResult;
	}

	public static final SLDConfig tcx = new SLDConfig(
			jspPath, units, SLDGenerator.style, 1, attrs, thresholds, colors, bins
	);
}
