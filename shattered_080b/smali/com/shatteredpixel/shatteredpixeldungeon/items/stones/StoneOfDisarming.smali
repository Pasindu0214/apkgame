.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;
.source "StoneOfDisarming.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_DISARM:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 3
    new-array v1, v1, [Z

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    rem-int v2, p1, v0

    div-int v0, p1, v0

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->losBlocking:[Z

    const/16 v4, 0x8

    invoke-static {v2, v0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/ShadowCaster;->castShadow(II[Z[ZI)V

    add-int/lit8 v3, v2, -0x8

    const/4 v5, 0x0

    .line 7
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 8
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 9
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v4

    .line 10
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v6, v0, -0x8

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 12
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->height:I

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v0, v4

    .line 14
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v5, v0, :cond_2

    .line 16
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 17
    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v6, v6, v5

    add-int/2addr v6, v3

    move v7, v3

    :goto_1
    if-gt v7, v2, :cond_1

    .line 18
    aget-boolean v8, v1, v6

    if-eqz v8, :cond_0

    .line 19
    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v8, v6}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v8, :cond_0

    .line 20
    iget-boolean v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    if-eqz v9, :cond_0

    .line 21
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22
    :cond_2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;

    invoke-direct {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfDisarming;I)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_3

    .line 24
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 26
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 27
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->disarm()V

    .line 28
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_3

    .line 30
    :cond_4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_teleport.mp3"

    .line 31
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
