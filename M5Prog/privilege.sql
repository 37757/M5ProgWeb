REVOKE select ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;

grant select ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;

grant delete ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;

grant insert ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;

grant update ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;

grant execute ON m5prog.* TO 'm5progphp'@'%';
FLUSH privileges;