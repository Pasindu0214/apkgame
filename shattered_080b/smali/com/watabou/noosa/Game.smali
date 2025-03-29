.class public Lcom/watabou/noosa/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements La/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/watabou/noosa/Game$SceneChangeCallback;
    }
.end annotation


# static fields
.field public static density:F = 1.0f

.field public static dispHeight:I = 0x0

.field public static dispWidth:I = 0x0

.field public static elapsed:F = 0.0f

.field public static height:I = 0x0

.field public static inputHandler:Lcom/watabou/input/InputHandler; = null

.field public static instance:Lcom/watabou/noosa/Game; = null

.field public static platform:Lcom/watabou/utils/PlatformSupport; = null

.field public static sceneClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/noosa/Scene;",
            ">;"
        }
    .end annotation
.end field

.field public static timeScale:F = 1.0f

.field public static timeTotal:F

.field public static version:Ljava/lang/String;

.field public static versionCode:I

.field public static width:I


# instance fields
.field public onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

.field public requestedReset:Z

.field public requestedScene:Lcom/watabou/noosa/Scene;

.field public scene:Lcom/watabou/noosa/Scene;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/watabou/utils/PlatformSupport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/noosa/Scene;",
            ">;",
            "Lcom/watabou/utils/PlatformSupport;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Game;->requestedReset:Z

    .line 3
    sput-object p1, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    .line 4
    sput-object p0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    .line 5
    sput-object p2, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    return-void
.end method

.method public static reportException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 6
    sget-object p0, La/b/a/e;->a:La/b/a/a;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAME"

    invoke-interface {p0, v1, v0}, La/b/a/a;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    throw p0

    .line 8
    :cond_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 9
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 12
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static runOnRenderThread(Lcom/watabou/utils/Callback;)V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    new-instance v1, Lcom/watabou/noosa/Game$1;

    invoke-direct {v1, p0}, Lcom/watabou/noosa/Game$1;-><init>(Lcom/watabou/utils/Callback;)V

    invoke-interface {v0, v1}, La/b/a/a;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static switchScene(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/watabou/noosa/Scene;",
            ">;)V"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    sput-object p0, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    const/4 p0, 0x1

    .line 13
    iput-boolean p0, v0, Lcom/watabou/noosa/Game;->requestedReset:Z

    const/4 p0, 0x0

    .line 14
    iput-object p0, v0, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .line 1
    sget-object v0, La/b/a/e;->b:La/b/a/f;

    check-cast v0, La/b/a/m/a/l;

    .line 2
    iget v1, v0, La/b/a/m/a/l;->t:F

    .line 3
    sput v1, Lcom/watabou/noosa/Game;->density:F

    .line 4
    invoke-virtual {v0}, La/b/a/m/a/l;->b()La/b/a/f$a;

    move-result-object v0

    iget v0, v0, La/b/a/f$a;->b:I

    sput v0, Lcom/watabou/noosa/Game;->dispHeight:I

    .line 5
    sget-object v0, La/b/a/e;->b:La/b/a/f;

    check-cast v0, La/b/a/m/a/l;

    invoke-virtual {v0}, La/b/a/m/a/l;->b()La/b/a/f$a;

    move-result-object v0

    iget v0, v0, La/b/a/f$a;->a:I

    sput v0, Lcom/watabou/noosa/Game;->dispWidth:I

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->enable()V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    .line 8
    new-instance v0, Lcom/watabou/input/InputHandler;

    sget-object v1, La/b/a/e;->d:La/b/a/g;

    invoke-direct {v0, v1}, Lcom/watabou/input/InputHandler;-><init>(La/b/a/g;)V

    sput-object v0, Lcom/watabou/noosa/Game;->inputHandler:Lcom/watabou/input/InputHandler;

    .line 9
    invoke-static {}, Lcom/watabou/gltextures/TextureCache;->reload()V

    .line 10
    invoke-static {}, Lcom/watabou/glwrap/Vertexbuffer;->refreshAllBuffers()V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/Scene;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 4
    :cond_0
    sput-object v1, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    .line 5
    sget-object v0, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    invoke-virtual {v0}, Lcom/watabou/noosa/audio/Music;->stop()V

    .line 6
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 7
    iget-object v1, v0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/l/b;

    .line 8
    invoke-interface {v2}, La/b/a/l/b;->a()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public resize(II)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->enable()V

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setNormalMode()V

    .line 3
    invoke-static {}, Lcom/watabou/gltextures/TextureCache;->reload()V

    .line 4
    invoke-static {}, Lcom/watabou/glwrap/Vertexbuffer;->refreshAllBuffers()V

    .line 5
    sget v0, Lcom/watabou/noosa/Game;->height:I

    if-ne p2, v0, :cond_1

    sget v0, Lcom/watabou/noosa/Game;->width:I

    if-eq p1, v0, :cond_3

    .line 6
    :cond_1
    sput p1, Lcom/watabou/noosa/Game;->width:I

    .line 7
    sput p2, Lcom/watabou/noosa/Game;->height:I

    .line 8
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    invoke-interface {p1}, La/b/a/a;->getType()La/b/a/a$a;

    move-result-object p1

    sget-object p2, La/b/a/a$a;->a:La/b/a/a$a;

    if-eq p1, p2, :cond_2

    .line 9
    sget p1, Lcom/watabou/noosa/Game;->width:I

    sput p1, Lcom/watabou/noosa/Game;->dispWidth:I

    .line 10
    sget p1, Lcom/watabou/noosa/Game;->height:I

    sput p1, Lcom/watabou/noosa/Game;->dispHeight:I

    .line 11
    :cond_2
    sget-object p1, Lcom/watabou/noosa/Game;->sceneClass:Ljava/lang/Class;

    invoke-static {p1}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchScene()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0}, Lcom/watabou/noosa/Camera;->createFullscreen(F)Lcom/watabou/noosa/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/watabou/noosa/Camera;->reset(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/watabou/noosa/Scene;->destroy()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/watabou/noosa/Game;->requestedScene:Lcom/watabou/noosa/Scene;

    iput-object v1, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/watabou/noosa/Game$SceneChangeCallback;->beforeCreate()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    invoke-virtual {v1}, Lcom/watabou/noosa/Scene;->create()V

    .line 7
    iget-object v1, p0, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/watabou/noosa/Game$SceneChangeCallback;->afterCreate()V

    :cond_2
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/watabou/noosa/Game;->onChange:Lcom/watabou/noosa/Game$SceneChangeCallback;

    const/4 v1, 0x0

    .line 9
    sput v1, Lcom/watabou/noosa/Game;->elapsed:F

    .line 10
    sput v0, Lcom/watabou/noosa/Game;->timeScale:F

    .line 11
    sput v1, Lcom/watabou/noosa/Game;->timeTotal:F

    return-void
.end method
