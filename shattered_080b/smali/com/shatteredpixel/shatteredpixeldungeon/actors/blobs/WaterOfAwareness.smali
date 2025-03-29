.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WaterOfAwareness;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;
.source "WaterOfAwareness.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/WellWater;-><init>()V

    return-void
.end method


# virtual methods
.method public affectHero(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_drink.mp3"

    .line 2
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    .line 5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 10
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc1:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 14
    :cond_2
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 16
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->misc2:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 17
    :cond_3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag$ItemIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;

    if-nez v2, :cond_5

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v2, :cond_4

    .line 19
    :cond_5
    iput-boolean v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursedKnown:Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    :goto_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 21
    iget v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v4, :cond_8

    .line 22
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, v1

    .line 23
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    .line 24
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->discover(I)V

    .line 25
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_7

    .line 26
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->discoverTile(II)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_8
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Awareness;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 28
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 29
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "procced"

    .line 30
    invoke-static {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public affectItem(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateItemLevelAquired(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 4
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_drink.mp3"

    .line 5
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-object p1
.end method

.method public record()Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->WELL_OF_AWARENESS:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    return-object v0
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "desc"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
