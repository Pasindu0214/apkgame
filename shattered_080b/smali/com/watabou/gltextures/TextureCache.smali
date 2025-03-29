.class public Lcom/watabou/gltextures/TextureCache;
.super Ljava/lang/Object;
.source "TextureCache.java"


# static fields
.field public static all:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/watabou/gltextures/SmartTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/Object;Lcom/watabou/gltextures/SmartTexture;)V
    .locals 2

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 2

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized createGradient([I)Lcom/watabou/gltextures/SmartTexture;
    .locals 8

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object p0, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/watabou/gltextures/SmartTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, La/b/a/o/g;

    array-length v3, p0

    sget-object v4, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 6
    aget v5, p0, v4

    shl-int/lit8 v5, v5, 0x8

    aget v6, p0, v4

    ushr-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    .line 7
    iget-object v6, v2, La/b/a/o/g;->a:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    .line 8
    iget-wide v6, v6, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v6, v7, v4, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(JIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/watabou/gltextures/SmartTexture;

    invoke-direct {p0, v2}, Lcom/watabou/gltextures/SmartTexture;-><init>(La/b/a/o/g;)V

    const/16 v2, 0x2601

    .line 10
    invoke-virtual {p0, v2, v2}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    const v2, 0x812f

    .line 11
    invoke-virtual {p0, v2, v2}, Lcom/watabou/gltextures/SmartTexture;->wrap(II)V

    .line 12
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized createSolid(I)Lcom/watabou/gltextures/SmartTexture;
    .locals 5

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1x1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object p0, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/watabou/gltextures/SmartTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, La/b/a/o/g;

    sget-object v3, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4, v3}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    shl-int/lit8 v3, p0, 0x8

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v3

    .line 5
    iput p0, v2, La/b/a/o/g;->b:I

    .line 6
    invoke-virtual {v2}, La/b/a/o/g;->b()V

    .line 7
    new-instance p0, Lcom/watabou/gltextures/SmartTexture;

    invoke-direct {p0, v2}, Lcom/watabou/gltextures/SmartTexture;-><init>(La/b/a/o/g;)V

    .line 8
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;
    .locals 6

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/watabou/gltextures/SmartTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    instance-of v1, p0, Lcom/watabou/gltextures/SmartTexture;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Lcom/watabou/gltextures/SmartTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 5
    :cond_1
    :try_start_2
    new-instance v1, Lcom/watabou/gltextures/SmartTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 6
    :try_start_3
    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 8
    new-instance v3, La/b/a/o/g;

    sget-object v4, La/b/a/e;->e:La/b/a/d;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    check-cast v4, La/b/a/m/a/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4, v5}, La/b/a/m/a/i;->c(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v4

    invoke-direct {v3, v4}, La/b/a/o/g;-><init>(La/b/a/n/a;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v3, p0, La/b/a/o/g;

    if-eqz v3, :cond_4

    .line 10
    move-object v3, p0

    check-cast v3, La/b/a/o/g;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    :try_start_6
    invoke-static {v3}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    :goto_1
    invoke-direct {v1, v2}, Lcom/watabou/gltextures/SmartTexture;-><init>(La/b/a/o/g;)V

    .line 13
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reload()V
    .locals 3

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/watabou/gltextures/SmartTexture;

    .line 2
    invoke-virtual {v2}, Lcom/watabou/gltextures/SmartTexture;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized remove(Ljava/lang/Object;)V
    .locals 4

    const-class v0, Lcom/watabou/gltextures/TextureCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/gltextures/SmartTexture;

    if-eqz v1, :cond_2

    .line 2
    sget-object v2, Lcom/watabou/gltextures/TextureCache;->all:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget p0, Lcom/watabou/gltextures/SmartTexture;->bound_id:I

    iget v2, v1, Lcom/watabou/gltextures/SmartTexture;->id:I

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    sput v3, Lcom/watabou/gltextures/SmartTexture;->bound_id:I

    .line 4
    :cond_0
    sget-object p0, La/b/a/e;->g:La/b/a/o/d;

    iget v2, v1, Lcom/watabou/gltextures/SmartTexture;->id:I

    check-cast p0, La/b/a/m/a/j;

    .line 5
    iget-object p0, p0, La/b/a/m/a/j;->a:[I

    aput v2, p0, v3

    const/4 v2, 0x1

    .line 6
    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 7
    iget-object p0, v1, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, La/b/a/o/g;->a()V

    :cond_1
    const/4 p0, 0x0

    .line 9
    iput-object p0, v1, Lcom/watabou/gltextures/SmartTexture;->bitmap:La/b/a/o/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
