.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Multiplicity;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Multiplicity.java"


# static fields
.field public static BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Multiplicity;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;-><init>()V

    return-void
.end method


# virtual methods
.method public curse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Multiplicity;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 6

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/PinCushion;

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    sget-object v3, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 4
    iget v4, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v3, v3, v2

    add-int/2addr v4, v3

    .line 5
    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_0

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x2

    .line 8
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v2, :cond_3

    .line 9
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage;-><init>()V

    .line 10
    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 11
    iput-object p3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 12
    invoke-virtual {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result p2

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage;->heroID:I

    .line 13
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage$MirrorInvis;

    const p3, 0x46fffe00    # 32767.0f

    invoke-static {p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object p3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->BOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object p3

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->MINIBOSS:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    instance-of p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mimic;

    if-nez p3, :cond_7

    instance-of p3, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;

    if-eqz p3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->fixTime()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz p3, :cond_6

    .line 17
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-direct {v2}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 18
    invoke-virtual {p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 19
    invoke-virtual {p3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 20
    iput v1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 21
    iget p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 22
    invoke-virtual {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V

    .line 24
    :cond_5
    instance-of p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    if-eqz p1, :cond_6

    .line 25
    move-object p1, p3

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_6
    move-object p1, p3

    goto :goto_2

    .line 26
    :cond_7
    :goto_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->createMob()Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a

    .line 27
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-array p2, v1, [Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Integer;

    array-length p3, p2

    :goto_3
    if-ge v1, p3, :cond_9

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_8

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 32
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 33
    invoke-static {v0}, Lcom/watabou/utils/Random;->element(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->appear(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    :cond_a
    return p4
.end method
