.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoCell;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndInfoCell.java"


# direct methods
.method public constructor <init>(I)V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    .line 3
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    aget-boolean v2, v2, p1

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/16 v1, 0x1d

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pit:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 6
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 7
    rem-int v5, p1, v2

    .line 8
    div-int v2, p1, v2

    .line 9
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;

    .line 10
    iget v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    if-lt v5, v9, :cond_2

    iget v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileW:I

    add-int/2addr v10, v9

    if-ge v5, v10, :cond_2

    iget v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    if-lt v2, v10, :cond_2

    iget v11, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileH:I

    add-int/2addr v11, v10

    if-ge v2, v11, :cond_2

    sub-int v7, v5, v9

    sub-int v9, v2, v10

    .line 11
    invoke-virtual {v8, v7, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->image(II)Lcom/watabou/noosa/Image;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    iget v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    sub-int/2addr v5, v0

    .line 13
    iget v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    sub-int/2addr v2, v0

    move-object v6, v8

    :cond_3
    const-string v0, ""

    .line 14
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    if-eqz v6, :cond_6

    .line 15
    invoke-virtual {v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->icon(Lcom/watabou/noosa/Image;)V

    .line 16
    invoke-virtual {v6, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->name(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 17
    iget-object v7, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_4
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v7, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v7, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 20
    :goto_1
    invoke-virtual {v6, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->desc(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 21
    invoke-static {v0, v2}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 22
    :cond_5
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-ne v1, v3, :cond_7

    .line 23
    new-instance v2, Lcom/watabou/noosa/Image;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->waterTex()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-direct {v2}, Lcom/watabou/noosa/Image;-><init>()V

    .line 25
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/16 v3, 0x10

    .line 26
    invoke-virtual {v2, v4, v4, v3, v3}, Lcom/watabou/noosa/Image;->frame(IIII)V

    .line 27
    iget-object v3, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 28
    iput-object v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_2

    .line 29
    :cond_7
    new-instance v2, Lcom/watabou/noosa/Image;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    iget-object v3, v3, Lcom/watabou/noosa/Tilemap;->texture:Lcom/watabou/gltextures/SmartTexture;

    .line 30
    invoke-direct {v2}, Lcom/watabou/noosa/Image;-><init>()V

    .line 31
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 32
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;

    iget-object v5, v3, Lcom/watabou/noosa/Tilemap;->tileset:Lcom/watabou/noosa/TextureFilm;

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTerrainTilemap;->getTileVisual(IIZ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 33
    iget-object v3, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 34
    iput-object v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    :goto_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v3, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/high16 v1, 0x42f00000    # 120.0f

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v8, v2, v2, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 39
    invoke-virtual {p0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x6

    .line 40
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 42
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 43
    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v5, :cond_8

    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v5, v5, p1

    if-lez v5, :cond_8

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->tileDesc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    const-string v5, "\n\n"

    .line 45
    invoke-static {v0, v5}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_9
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->tileDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 47
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "nothing"

    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const/16 p1, 0x78

    .line 48
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 49
    iget v0, v8, Lcom/watabou/noosa/ui/Component;->x:F

    .line 50
    invoke-virtual {v8}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
