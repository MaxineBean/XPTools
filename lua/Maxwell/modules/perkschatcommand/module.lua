if SERVER then

	hook.Add( "PlayerSay", "OpenPerkMenuSay", function( ply, text, public )

		text = string.lower( text )

		if ( string.sub( text, 1 ) == "!perks" ) then
			ply:ConCommand( 'perks' ) 
			return false
		end
	end )
end 