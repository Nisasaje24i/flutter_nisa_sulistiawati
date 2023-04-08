import 'package:flutter/material.dart';
import 'package:flutter_animasi/model/contact_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactItemCard extends StatelessWidget {
  final ContactModel contact;
  final Function() onPressed;

  const ContactItemCard({
    Key? key,
    required this.contact,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(contact.nama, style: GoogleFonts.poppins()),
          Text(contact.nomor, style: GoogleFonts.poppins()),
          IconButton(
            // TODO 17: Membuat dialog
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    'Are you sure?',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'NO',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: Text(
                        'YES',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
