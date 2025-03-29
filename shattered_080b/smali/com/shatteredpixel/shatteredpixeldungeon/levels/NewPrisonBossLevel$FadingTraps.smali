.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;
.super Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;
.source "NewPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadingTraps"
.end annotation


# instance fields
.field public fadeDelay:F

.field public fadeDuration:F

.field public initialAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;-><init>()V

    const-string v0, "terrain_features.png"

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->texture:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDuration:F

    const v0, 0x3ecccccd    # 0.4f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->initialAlpha:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDelay:F

    return-void
.end method


# virtual methods
.method public create()Lcom/watabou/noosa/Tilemap;
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    mul-int v1, v1, v2

    new-array v1, v1, [I

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 4
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v2

    add-int/2addr v5, v4

    .line 6
    :goto_1
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    iget v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_1

    .line 7
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v6, v5}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz v6, :cond_0

    .line 8
    iget v7, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v7

    aput v6, v1, v3

    goto :goto_2

    :cond_0
    const/4 v6, -0x1

    .line 9
    aput v6, v1, v3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Tilemap;->map([II)V

    .line 11
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->vis:Lcom/watabou/noosa/Tilemap;

    if-nez v1, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->initialAlpha:F

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 13
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;)V

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewPrisonBossLevel$FadingTraps;->fadeDelay:F

    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    :goto_3
    return-object v0
.end method

.method public desc(II)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    add-int/2addr v0, p1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    invoke-static {v2, p2, v1, v0}, La/a/a/a/a;->a(IIII)I

    move-result p2

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "desc"

    .line 6
    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    throw v0

    :cond_1
    return-object v0
.end method

.method public name(II)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    add-int/2addr v0, p1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    invoke-static {v2, p2, v1, v0}, La/a/a/a/a;->a(IIII)I

    move-result p2

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {p1, p2}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCoveringArea(Lcom/watabou/utils/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/watabou/utils/Rect;->left:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 2
    iget v1, p1, Lcom/watabou/utils/Rect;->top:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 3
    iget v2, p1, Lcom/watabou/utils/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    .line 4
    iget p1, p1, Lcom/watabou/utils/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    return-void
.end method
