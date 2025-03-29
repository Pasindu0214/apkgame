.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.source "Alchemy.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;


# static fields
.field public static alchPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;-><init>()V

    return-void
.end method


# virtual methods
.method public evolve()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v0, v0, Lcom/watabou/utils/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v2, v1, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v0, v2, :cond_2

    .line 2
    iget v1, v1, Lcom/watabou/utils/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v2, v2, Lcom/watabou/utils/Rect;->right:I

    if-gt v1, v2, :cond_1

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v3, v3, v0

    add-int/2addr v3, v1

    .line 5
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v4, v4, v3

    aput v4, v2, v3

    .line 7
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v5, v2, v3

    add-int/2addr v4, v5

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 8
    aget v2, v2, v3

    if-lez v2, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 9
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->ALCHEMY:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->add(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getEnergy()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;->alchPos:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public spendEnergy(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Alchemy;->alchPos:I

    aget v2, v0, v1

    sub-int/2addr v2, p1

    const/4 p1, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, v0, v1

    return-void
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    const/16 v0, 0xc

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method
