.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.super Lcom/watabou/noosa/MovieClip;
.source "ItemSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    }
.end annotation


# instance fields
.field public dropInterval:F

.field public emitter:Lcom/watabou/noosa/particles/Emitter;

.field public glowUp:Z

.field public glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

.field public heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

.field public perspectiveRaise:F

.field public phase:F

.field public renderShadow:Z

.field public shadowHeight:F

.field public shadowMatrix:[F

.field public shadowOffset:F

.field public shadowWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    return-void
.end method

.method public constructor <init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V
    .locals 1

    const-string v0, "items.png"

    .line 10
    invoke-direct {p0, v0}, Lcom/watabou/noosa/MovieClip;-><init>(Ljava/lang/Object;)V

    const/high16 v0, 0x3ea00000    # 0.3125f

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->perspectiveRaise:F

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowWidth:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 14
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowHeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    const-string v0, "items.png"

    .line 2
    invoke-direct {p0, v0}, Lcom/watabou/noosa/MovieClip;-><init>(Ljava/lang/Object;)V

    const/high16 v0, 0x3ea00000    # 0.3125f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->perspectiveRaise:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowWidth:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowHeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    .line 9
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/watabou/noosa/Image;->dirty:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->vertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/watabou/glwrap/Vertexbuffer;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/watabou/noosa/Image;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/watabou/glwrap/Vertexbuffer;->updateVertices(Ljava/nio/FloatBuffer;)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/watabou/noosa/Image;->dirty:Z

    .line 10
    :cond_2
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v1}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 12
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->updateMatrix()V

    .line 14
    iget-object v1, v0, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    invoke-virtual {v1, v2}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 15
    iget v1, p0, Lcom/watabou/noosa/Visual;->am:F

    const v2, 0x3f19999a    # 0.6f

    mul-float v7, v1, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, p0, Lcom/watabou/noosa/Visual;->aa:F

    mul-float v11, v1, v2

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 16
    iget-object v1, p0, Lcom/watabou/noosa/Image;->buffer:Lcom/watabou/glwrap/Vertexbuffer;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/NoosaScript;->drawQuad(Lcom/watabou/glwrap/Vertexbuffer;)V

    .line 17
    :cond_3
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    :cond_4
    :goto_1
    return-void
.end method

.method public drop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->dropInterval:F

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/high16 v2, -0x3d380000    # -100.0f

    const/4 v3, 0x0

    .line 6
    iput v3, v1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    neg-float v2, v2

    div-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    .line 9
    iput v3, v1, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x5

    .line 13
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_gold.mp3"

    invoke-virtual {v0, v3, v2, v2, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_2
    return-void
.end method

.method public drop(I)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    if-ne v0, p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_0

    .line 17
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 18
    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 19
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    .line 21
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v0, v2

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    :goto_0
    return-void
.end method

.method public frame(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/watabou/noosa/TextureFilm;->frames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/watabou/utils/RectF;

    .line 4
    invoke-virtual {v0, p1}, Lcom/watabou/noosa/TextureFilm;->height(Lcom/watabou/utils/RectF;)F

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x41500000    # 13.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x41800000    # 16.0f

    div-float/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->perspectiveRaise:F

    :cond_0
    return-void
.end method

.method public declared-synchronized glow(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->resetColor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public kill()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 2
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->renderShadow:Z

    .line 4
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    return-void
.end method

.method public originToCenter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 2
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 3
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public place(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 3
    rem-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    add-float/2addr v1, v0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    div-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    sub-float v0, v2, v0

    add-float/2addr v0, p1

    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->perspectiveRaise:F

    mul-float p1, p1, v2

    sub-float/2addr v0, p1

    .line 6
    iput v1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 7
    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 8
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    :cond_0
    return-void
.end method

.method public revive()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->dropInterval:F

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 12
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/MovieClip;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->seen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->dropInterval:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    iget-object v4, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v4, v4, Lcom/watabou/utils/PointF;->y:F

    sget v5, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v4, v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->dropInterval:F

    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->dropInterval:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 7
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    .line 9
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    .line 10
    iput v3, v0, Lcom/watabou/utils/PointF;->x:F

    .line 11
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 12
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->place(I)V

    .line 14
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_6

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    .line 16
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    goto :goto_3

    .line 17
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    aget v0, v0, v4

    const/16 v4, 0x18

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1c

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 18
    :goto_3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v4

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Gold;

    if-nez v4, :cond_6

    .line 19
    sget-object v4, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    if-eqz v0, :cond_5

    const-string v0, "snd_water.mp3"

    goto :goto_4

    :cond_5
    const-string v0, "snd_step.mp3"

    :goto_4
    const v6, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v0, v5, v5, v6}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 20
    :cond_6
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    if-eqz v0, :cond_9

    .line 21
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowUp:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    sget v4, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->period:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 22
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowUp:Z

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->period:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    goto :goto_5

    .line 24
    :cond_7
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowUp:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    .line 25
    iput-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowUp:Z

    .line 26
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    .line 27
    :cond_8
    :goto_5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->phase:F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->period:F

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput v1, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput v1, p0, Lcom/watabou/noosa/Visual;->rm:F

    .line 29
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->red:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->ra:F

    .line 30
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->green:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->ga:F

    .line 31
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glowing:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->blue:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/watabou/noosa/Visual;->ba:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateMatrix()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->updateMatrix()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    .line 3
    array-length v2, v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 4
    aget v3, v0, v2

    aput v3, v1, v2

    if-gtz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    .line 6
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowWidth:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 7
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v1

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowHeight:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowOffset:F

    add-float/2addr v3, v1

    .line 8
    invoke-static {v0, v2, v3}, Lcom/watabou/glwrap/Matrix;->translate([FFF)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowMatrix:[F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowWidth:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->shadowHeight:F

    invoke-static {v0, v1, v2}, Lcom/watabou/glwrap/Matrix;->scale([FFF)V

    return-void
.end method

.method public view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    .line 20
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->frame(I)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->glow(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    return-object p0
.end method

.method public view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
    .locals 3

    .line 7
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 10
    :pswitch_0
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->REMAINS:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 11
    :pswitch_1
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BONES:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 12
    :pswitch_2
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->TOMB:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 13
    :pswitch_3
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CRYSTAL_CHEST:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 14
    :pswitch_4
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->LOCKED_CHEST:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 15
    :pswitch_5
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->CHEST:I

    invoke-virtual {p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 16
    :pswitch_6
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image()I

    move-result v0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 4
    iput-object p0, p1, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    .line 5
    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    :cond_0
    return-object p0
.end method

.method public visible(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->emitter:Lcom/watabou/noosa/particles/Emitter;

    :cond_0
    return-void
.end method
