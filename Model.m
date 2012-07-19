//
//  Model.m
//  Jul19
//
//  Created by Dan Ristea on 7/19/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "Model.h"

/*
 The model consists of a big tree containing little trees.
 The little trees have even smaller ones inside them.
 At the very bottom are trees that contain no smaller trees.
 We call them the "leaves".
 
 An NSIndexPath identifies a tree.  For example,
 0 represents the United States.
 0.0 represents Connecticut.
 0.1 represents New York.
 0.2 represents New Jersey.
 0.1.1 represents Putnam County.
 0.1.1.2 represents Cold Spring.
 
 Each tree is implemented as an NSArray.  The first object in the NSArray is an NSString
 giving the name of the tree.  The remaining objects, if any, are the subtrees inside of
 the tree.
 */

#define BEGIN [NSArray arrayWithObjects:
#define END , nil]

@implementation Model

- (id) init {
	self = [super init];
	if (self) {
		tree = BEGIN @"Universe",
					BEGIN @"NYC Colleges and Universities",
						BEGIN @"Brooklyn",
							BEGIN @"ASA College"
							END,
							BEGIN @"Bramson ORT College"
							END,
							BEGIN @"Brooklyn Law School"
							END,
							BEGIN @"CUNY",
								BEGIN @"Brooklyn College"
								END,
								BEGIN @"Kingsborough Community College"
								END,
								BEGIN @"Medgar Evers College"
								END,
								BEGIN @"New York City College of Technology"
								END,
								BEGIN @"Institute of Design and Construction"
								END
							END,
							BEGIN @"Long Island College Hospital School of Nursing"
							END,
							BEGIN @"Long Island University"
							END,
							BEGIN @"New York University",
								BEGIN @"Polytechnic Institute of New York University"
								END
							END,
							BEGIN @"Pratt Institute"
							END,
							BEGIN @"St. Francis College"
							END,
							BEGIN @"Saint Joseph's College"
							END,
							BEGIN @"State University of New York",
								BEGIN @"SUNY Downstate Medical Center"
								END
							END

						END,
		
						BEGIN @"Bronx",
							BEGIN @"CUNY",
								BEGIN @"Bronx Community College"
								END,
								BEGIN @"Hostos Community College"
								END,
								BEGIN @"Lehman College"
								END,
								BEGIN @"College of Mount Saint Vincent"
								END,
								BEGIN @"Fordham University"
								END
							END,
							BEGIN @"Manhattan College"
							END,
							BEGIN @"Monroe College"
							END,
							BEGIN @"State University of New York",
								BEGIN @"SUNY Maritime College"
								END

							END
						END,
		
						BEGIN @"Manhattan",
							BEGIN @"Alvin Ailey American Dance Theater"
							END,
							BEGIN @"American Academy McAllister Institute"
							END,
							BEGIN @"American Academy of Dramatic Arts"
							END,
							BEGIN @"American Musical and Dramatic Academy"
							END,
							BEGIN @"Art Institute of New York City"
							END,
							BEGIN @"Bank Street College of Education"
							END,
							BEGIN @"Bard College"
							END,
							BEGIN @"Barnard College"
							END,
							BEGIN @"Berkely College"
							END,
							BEGIN @"Boricua College"
							END,
							BEGIN @"CUNY",
								BEGIN @"Baruch College"
								END,
								BEGIN @"City College of New York"
								END,
								BEGIN @"CUNY Baccalaureate for Unique and Interdisciplinary Studies"
								END,
								BEGIN @"CUNY Graduate School of Journalism"
								END,
								BEGIN @"CUNY William E. Macaulay Honors College"
								END,
								BEGIN @"Hunter College"
								END,
								BEGIN @"John Jay College of Criminal Justice"
								END
							END,
							BEGIN @"Columbia University",
								BEGIN @"Columbia University"
								END,
								BEGIN @"Barnard College"
								END,
								BEGIN @"Teachers College"
								END,
								BEGIN @"Union Theological Seminary"
								END
							END,
							BEGIN @"Cooper Union"
							END,
							BEGIN @"DeVry University"
							END,
							BEGIN @"Fashion Institute of Technology"
							END,
							BEGIN @"General Theological Seminary"
							END,
							BEGIN @"Gerstner Sloan Kettering Graduate School of Biomedical Science"
							END,
							BEGIN @"Globe Institute of Technology"
							END,
							BEGIN @"Hebrew Union College"
							END,
							BEGIN @"Helene Fuld College of Nursing"
							END,
							BEGIN @"Jewish Theological Seminary of America"
							END,
							BEGIN @"Juilliard School"
							END,
							BEGIN @"The King's College"
							END,
							BEGIN @"Laboratory Institute of Merchandising"
							END,
							BEGIN @"Mandl College of Allied Health"
							END,
							BEGIN @"Manhattan School of Music"
							END,
							BEGIN @"Marymount Manhattan College"
							END,
							BEGIN @"Mercy College"
							END,
							BEGIN @"Metropolitan College of New York"
							END,
							BEGIN @"The New School"
							END,
							BEGIN @"New York Academy of Art"
							END,
							BEGIN @"New York Career Institute"
							END,
							BEGIN @"New York Institute of Technology"
							END,
							BEGIN @"New York Law School"
							END,
							BEGIN @"New York School of Interior Design"
							END,
							BEGIN @"New York Theological Seminary"
							END,
							BEGIN @"New York University",
								BEGIN @"New York University"
								END,
								BEGIN @"New York University School of Law"
								END,
								BEGIN @"New York University School of Medicine"
								END
							END,
							BEGIN @"Nyack College (School of Music)"
							END,
							BEGIN @"Pace University"
							END,
							BEGIN @"Pacific College of Oriental Medicine"
							END,
							BEGIN @"Parsons The New School for Design"
							END,
							BEGIN @"Phillips Beth Israel School of Nursing"
							END,
							BEGIN @"Pratt Institute"
							END,
							BEGIN @"Professional Business College"
							END,
							BEGIN @"Rabbi Isaac Elchanon Theological Seminary"
							END,
							BEGIN @"Richard Guilder Graduate School-American Museum of Natural History"
							END,
							BEGIN @"Rockefeller University"
							END,
							BEGIN @"School of American Ballet"
							END,
							BEGIN @"School of Visual Arts"
							END,
							BEGIN @"State University of New York",
								BEGIN @"Fashion Institute of Technology"
								END,
								BEGIN @"SUNY State College of Optometry"
								END
							END,
							BEGIN @"Studio Maestro"
							END,
							BEGIN @"Swedish Institute of Massage Therapy"
							END,
							BEGIN @"Teachers College"
							END,
							BEGIN @"Technical Career Institute College of Technology"
							END,
							BEGIN @"Touro College"
							END,
							BEGIN @"Tri-State College of Acupuncture"
							END,
							BEGIN @"Union Theological Seminary"	
							END,
							BEGIN @"Cornell University",
								BEGIN @"Weill Medical College (Cornell University)"
								END,
								BEGIN @"Weill Cornell Graduate School of Medical Sciences"
								END
							END		
						END,
		
						BEGIN @"Queens",
							BEGIN @"Bramson ORT College"
							END,
							BEGIN @"Briarcliffe College - The Queens Center"
							END,
							BEGIN @"CUNY",
								BEGIN @"LaGuardia Community College"
								END,
								BEGIN @"Queens College"
								END,
								BEGIN @"Queensborough Community College"
								END,
								BEGIN @"CUNY School of Law"
								END,
								BEGIN @"York College"
								END
							END,
							BEGIN @"Long Island Business Institute - Flushing"
							END,
							BEGIN @"New York School of Urban Ministry"
							END,
							BEGIN @"Plaza College"
							END,
							BEGIN @"Saint John's University"
							END,
							BEGIN @"Vaughn College of Aeronautics & Technology"
							END,
							BEGIN @"Yeshiva University",
								BEGIN @"Yeshiva University"
								END,
								BEGIN @"Albert Einstein College of Medicine"
								END,
								BEGIN @"Benjamin N. Cardozo School of Law"
								END
							END
						END,
		
						BEGIN @"Staten Island",
							BEGIN @"CUNY",
								BEGIN @"College of Staten Island"
								END
							END,
							BEGIN @"Wagner College"
							END
						END
					END
				END;
	}
	
	return self;
}


//Return the tree to which the index path leads.

- (NSArray *) tree: (NSIndexPath *) indexPath
{
	NSArray *a = tree;
	
	for (NSUInteger p = 0; p < indexPath.length; ++p) {
		NSUInteger i = [indexPath indexAtPosition: p];
		a = [a objectAtIndex: i + 1];
	}
	
	return a;
}

//Return the name of the tree to which the indexPath leads.

- (NSString *) name: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return [a objectAtIndex: 0];
}

//Return the number of subtrees of the tree to which the indexPath leads.

- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return a.count - 1;
}

//Return the line of text that should go in the specified row
//of the tree to which the indexPath leads.

- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row
{
	indexPath = [indexPath indexPathByAddingIndex: row];
	return [self name: indexPath];
}

@end
