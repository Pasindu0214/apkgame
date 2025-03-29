.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Web.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method

.method public static affectChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Roots;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget v0, v0, p1

    if-gtz v0, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v1, v1, p1

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v2, p1

    return-void
.end method

.method public evolve()V
    .locals 9

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v2, Lcom/watabou/utils/Rect;->right:I

    if-ge v1, v3, :cond_4

    .line 3
    iget v2, v2, Lcom/watabou/utils/Rect;->top:I

    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v3, v3, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    .line 4
    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v6, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_0

    aget v5, v5, v3

    sub-int/2addr v5, v8

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    aput v5, v4, v3

    .line 6
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aget v6, v5, v3

    add-int/2addr v4, v6

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 7
    iget-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget v5, v5, v3

    if-gtz v5, :cond_1

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v6, v6, v3

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    aput-boolean v7, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public fullyClear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    return-void
.end method

.method public seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    .line 2
    iget-object p3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v0, v0, p2

    if-gtz v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Terrain;->flags:[I

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget p1, p1, p2

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    aput-boolean p1, p3, p2

    return-void
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

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/WebParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
