.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Blob.java"


# instance fields
.field public alwaysVisible:Z

.field public area:Lcom/watabou/utils/Rect;

.field public cur:[I

.field public emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

.field public off:[I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/16 v0, -0xa

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 4
    new-instance v1, Lcom/watabou/utils/Rect;

    .line 5
    invoke-direct {v1, v0, v0, v0, v0}, Lcom/watabou/utils/Rect;-><init>(IIII)V

    .line 6
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    .line 7
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->alwaysVisible:Z

    return-void
.end method

.method public static seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {p0, p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object p0

    return-object p0
.end method

.method public static seed(IILjava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;",
            ")TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    if-nez v0, :cond_0

    .line 12
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    :cond_0
    if-eqz v0, :cond_1

    .line 13
    iget-object v1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, p3, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V

    :cond_1
    return-object v0
.end method

.method public static volumeAt(ILjava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    if-eqz p1, :cond_1

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget p0, p1, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public act()Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->setupArea()V

    .line 5
    :cond_0
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->evolve()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    .line 9
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->setEmpty()Lcom/watabou/utils/Rect;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public clear(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v2, v1, p1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    const/4 v0, 0x0

    .line 3
    aput v0, v1, p1

    return-void
.end method

.method public evolve()V
    .locals 10

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v1, v1, Lcom/watabou/utils/Rect;->top:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v3, Lcom/watabou/utils/Rect;->bottom:I

    if-gt v1, v4, :cond_c

    .line 3
    iget v3, v3, Lcom/watabou/utils/Rect;->left:I

    sub-int/2addr v3, v2

    :goto_1
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v4, v4, Lcom/watabou/utils/Rect;->right:I

    if-gt v3, v4, :cond_b

    .line 4
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    mul-int v5, v5, v1

    add-int/2addr v5, v3

    .line 6
    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->insideMap(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7
    aget-boolean v4, v0, v5

    const/4 v6, 0x0

    if-nez v4, :cond_9

    .line 8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v7, v4, v5

    .line 9
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v8, Lcom/watabou/utils/Rect;->left:I

    if-le v3, v8, :cond_0

    add-int/lit8 v8, v5, -0x1

    aget-boolean v9, v0, v8

    if-nez v9, :cond_0

    .line 10
    aget v4, v4, v8

    add-int/2addr v7, v4

    const/4 v4, 0x2

    goto :goto_2

    :cond_0
    const/4 v4, 0x1

    .line 11
    :goto_2
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v8, Lcom/watabou/utils/Rect;->right:I

    if-ge v3, v8, :cond_1

    add-int/lit8 v8, v5, 0x1

    aget-boolean v9, v0, v8

    if-nez v9, :cond_1

    .line 12
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v8, v9, v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    .line 13
    :cond_1
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v8, Lcom/watabou/utils/Rect;->top:I

    if-le v1, v8, :cond_2

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 14
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    sub-int v9, v5, v8

    .line 15
    aget-boolean v9, v0, v9

    if-nez v9, :cond_2

    .line 16
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    sub-int v8, v5, v8

    aget v8, v9, v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    .line 17
    :cond_2
    iget-object v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v8, v8, Lcom/watabou/utils/Rect;->bottom:I

    if-ge v1, v8, :cond_3

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 18
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int v9, v5, v8

    .line 19
    aget-boolean v9, v0, v9

    if-nez v9, :cond_3

    .line 20
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    add-int/2addr v8, v5

    aget v8, v9, v8

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-lt v7, v4, :cond_4

    .line 21
    div-int/2addr v7, v4

    add-int/lit8 v6, v7, -0x1

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v6, v4, v5

    if-lez v6, :cond_8

    .line 23
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v4, Lcom/watabou/utils/Rect;->top:I

    if-ge v1, v5, :cond_5

    .line 24
    iput v1, v4, Lcom/watabou/utils/Rect;->top:I

    goto :goto_3

    .line 25
    :cond_5
    iget v5, v4, Lcom/watabou/utils/Rect;->bottom:I

    if-lt v1, v5, :cond_6

    add-int/lit8 v5, v1, 0x1

    .line 26
    iput v5, v4, Lcom/watabou/utils/Rect;->bottom:I

    .line 27
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    iget v5, v4, Lcom/watabou/utils/Rect;->left:I

    if-ge v3, v5, :cond_7

    .line 28
    iput v3, v4, Lcom/watabou/utils/Rect;->left:I

    goto :goto_4

    .line 29
    :cond_7
    iget v5, v4, Lcom/watabou/utils/Rect;->right:I

    if-lt v3, v5, :cond_8

    add-int/lit8 v5, v3, 0x1

    .line 30
    iput v5, v4, Lcom/watabou/utils/Rect;->right:I

    .line 31
    :cond_8
    :goto_4
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    goto :goto_5

    .line 32
    :cond_9
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    aput v6, v4, v5

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public fullyClear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    invoke-virtual {v0}, Lcom/watabou/utils/Rect;->setEmpty()Lcom/watabou/utils/Rect;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 5
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    .line 6
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    return-void
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "cur"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "length"

    .line 3
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    .line 4
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "start"

    .line 6
    invoke-virtual {p1, v1}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    add-int v3, v1, p1

    aget v4, v0, v1

    aput v4, v2, v3

    .line 9
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    aget v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seed(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    if-nez v0, :cond_0

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->off:[I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    .line 7
    iget-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    .line 8
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 9
    rem-int v0, p2, p1

    div-int/2addr p2, p1

    invoke-virtual {p3, v0, p2}, Lcom/watabou/utils/Rect;->union(II)Lcom/watabou/utils/Rect;

    return-void
.end method

.method public setupArea()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->area:Lcom/watabou/utils/Rect;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 5
    rem-int v3, v0, v2

    div-int v2, v0, v2

    invoke-virtual {v1, v3, v2}, Lcom/watabou/utils/Rect;->union(II)Lcom/watabou/utils/Rect;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->volume:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v2, v2, v1

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 8
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-le v2, v1, :cond_3

    .line 9
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    aget v3, v3, v2

    if-lez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v3, "start"

    .line 10
    invoke-virtual {p1, v3, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 11
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    array-length v3, v3

    const-string v4, "length"

    invoke-virtual {p1, v4, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v1

    .line 12
    new-array v3, v2, [I

    .line 13
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->cur:[I

    invoke-static {v4, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "cur"

    .line 14
    invoke-virtual {p1, v0, v3}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;[I)V

    :cond_4
    return-void
.end method

.method public tileDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public use(Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->emitter:Lcom/shatteredpixel/shatteredpixeldungeon/effects/BlobEmitter;

    return-void
.end method
