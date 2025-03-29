.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "Wandmaker.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WandmakerSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;->throwItem()V

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    .line 1
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->INFINITE_EVASION:I

    return p1
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given2:Z

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    .line 4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/CorpseDust;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Rotberry$Seed;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Embers;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    goto/16 :goto_4

    .line 9
    :cond_3
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 11
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "reminder_dust"

    .line 12
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 14
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "reminder_berry"

    .line 15
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 17
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "reminder_ember"

    .line 18
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :goto_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$2;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    goto/16 :goto_4

    .line 20
    :cond_6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v5, ""

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_7

    move-object p1, v5

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "intro_huntress"

    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 22
    :cond_8
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "intro_rogue"

    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 23
    :cond_9
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 24
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "intro_mage"

    .line 25
    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 26
    :cond_a
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "intro_warrior"

    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    :goto_2
    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "intro_1"

    invoke-static {p0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type1:I

    if-eq v6, v2, :cond_d

    if-eq v6, v3, :cond_c

    if-eq v6, v1, :cond_b

    goto :goto_3

    .line 29
    :cond_b
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "intro_berry"

    .line 30
    invoke-static {v0, v5, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 31
    :cond_c
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "intro_ember"

    .line 32
    invoke-static {v0, v5, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 33
    :cond_d
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "intro_dust"

    .line 34
    invoke-static {v0, v5, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 35
    :goto_3
    invoke-static {v5}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "intro_2"

    .line 36
    invoke-static {v0, v4, v3, v1}, La/a/a/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Wandmaker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    .line 38
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->WANDMAKER:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    .line 39
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->given2:Z

    :goto_4
    return v2
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
