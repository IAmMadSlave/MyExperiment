package JavaBrite;

/*
 * Copyright (c) 2011 Florida International University.
 *
 * Permission is hereby granted, free of charge, to any individual or
 * institution obtaining a copy of this software and associated
 * documentation files (the "software"), to use, copy, modify, and
 * distribute without restriction.
 *
 * The software is provided "as is", without warranty of any kind,
 * express or implied, including but not limited to the warranties of
 * merchantability, fitness for a particular purpose and
 * non-infringement.  In no event shall Florida International
 * University be liable for any claim, damages or other liability,
 * whether in an action of contract, tort or otherwise, arising from,
 * out of or in connection with the software or the use or other
 * dealings in the software.
 *
 * This software is developed and maintained by
 *
 *   Modeling and Networking Systems Research Group
 *   School of Computing and Information Sciences
 *   Florida International University
 *   Miami, Florida 33199, USA
 *
 * You can find our research at http://www.primessf.net/.
 */

/**
 * This class define coordinate of a node
 * @author Hao Jiang
 */
public class Coordinate
{
	private int x;
	private int y;

	public Coordinate(int x, int y)
	{
		this.x = x;
		this.y = y;
	}
	
	public int getX()
	{
		return this.x;
	}
	
	public int getY()
	{
		return this.y;
	}
	
	public boolean equals(Coordinate c)
	{
		if (c == null)
			return false;
		else if (this.x == c.x && this.y == c.y)
			return true;
		
		return false;
	}
	
	public double distance(Coordinate c)
	{
		return Math.sqrt(Math.pow(this.x - c.x, 2) + Math.pow(this.y - c.y,2));
	}
}
