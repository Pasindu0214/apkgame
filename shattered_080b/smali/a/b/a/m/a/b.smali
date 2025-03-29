.class public La/b/a/m/a/b;
.super Landroid/app/Activity;
.source "AndroidApplication.java"

# interfaces
.implements La/b/a/m/a/c;


# instance fields
.field public final androidEventListeners:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/m/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public applicationLogger:La/b/a/m/a/e;

.field public audio:La/b/a/m/a/f;

.field public final executedRunnables:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public files:La/b/a/m/a/i;

.field public firstResume:Z

.field public graphics:La/b/a/m/a/l;

.field public handler:Landroid/os/Handler;

.field public hideStatusBar:Z

.field public input:La/b/a/m/a/m;

.field public isWaitingForAudio:Z

.field public final lifecycleListeners:La/b/a/r/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/p<",
            "La/b/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public listener:La/b/a/b;

.field public logLevel:I

.field public net:La/b/a/m/a/s;

.field public final runnables:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public useImmersiveMode:Z

.field public wasFocusChanged:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, La/b/a/r/c;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La/b/a/m/a/b;->firstResume:Z

    .line 3
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/m/a/b;->runnables:La/b/a/r/a;

    .line 4
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/m/a/b;->executedRunnables:La/b/a/r/a;

    .line 5
    new-instance v0, La/b/a/r/p;

    const-class v1, La/b/a/i;

    invoke-direct {v0, v1}, La/b/a/r/p;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, La/b/a/m/a/b;->lifecycleListeners:La/b/a/r/p;

    .line 6
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/m/a/b;->androidEventListeners:La/b/a/r/a;

    const/4 v0, 0x2

    .line 7
    iput v0, p0, La/b/a/m/a/b;->logLevel:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, La/b/a/m/a/b;->useImmersiveMode:Z

    .line 9
    iput-boolean v0, p0, La/b/a/m/a/b;->hideStatusBar:Z

    const/4 v1, -0x1

    .line 10
    iput v1, p0, La/b/a/m/a/b;->wasFocusChanged:I

    .line 11
    iput-boolean v0, p0, La/b/a/m/a/b;->isWaitingForAudio:Z

    return-void
.end method


# virtual methods
.method public addLifecycleListener(La/b/a/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->lifecycleListeners:La/b/a/r/p;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, La/b/a/m/a/b;->lifecycleListeners:La/b/a/r/p;

    invoke-virtual {v1, p1}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, La/b/a/m/a/b;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, La/b/a/m/a/b;->applicationLogger:La/b/a/m/a/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->handler:Landroid/os/Handler;

    new-instance v1, La/b/a/m/a/b$a;

    invoke-direct {v1, p0}, La/b/a/m/a/b$a;-><init>(La/b/a/m/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getApplicationListener()La/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->listener:La/b/a/b;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getExecutedRunnables()La/b/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->executedRunnables:La/b/a/r/a;

    return-object v0
.end method

.method public getGraphics()La/b/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    return-object v0
.end method

.method public getInput()La/b/a/m/a/m;
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    return-object v0
.end method

.method public getLifecycleListeners()La/b/a/r/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/p<",
            "La/b/a/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->lifecycleListeners:La/b/a/r/p;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)La/b/a/k;
    .locals 2

    .line 1
    new-instance v0, La/b/a/m/a/t;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v0, p1}, La/b/a/m/a/t;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public getRunnables()La/b/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/r/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->runnables:La/b/a/r/a;

    return-object v0
.end method

.method public getType()La/b/a/a$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/a$a;->a:La/b/a/a$a;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public hideStatusBar(Z)V
    .locals 6

    if-eqz p1, :cond_2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-gt v1, v3, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AndroidApplication"

    const-string v1, "Can\'t hide status bar"

    .line 7
    invoke-virtual {p0, v0, v1, p1}, La/b/a/m/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, La/b/a/m/a/b;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, La/b/a/m/a/b;->applicationLogger:La/b/a/m/a/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget v0, p0, La/b/a/m/a/b;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, La/b/a/m/a/b;->applicationLogger:La/b/a/m/a/e;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, La/b/a/m/a/b;->androidEventListeners:La/b/a/r/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, La/b/a/m/a/b;->androidEventListeners:La/b/a/r/a;

    iget v2, v2, La/b/a/r/a;->b:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, La/b/a/m/a/b;->androidEventListeners:La/b/a/r/a;

    invoke-virtual {v2, v1}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/g;

    invoke-interface {v2, p1, p2, p3}, La/b/a/m/a/g;->a(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object p1, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    iput-boolean v0, p1, La/b/a/m/a/m;->E:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 6

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 2
    iget-boolean v0, v0, La/b/a/m/a/l;->v:Z

    .line 3
    sget-boolean v1, La/b/a/m/a/l;->y:Z

    const/4 v2, 0x1

    .line 4
    sput-boolean v2, La/b/a/m/a/l;->y:Z

    .line 5
    iget-object v3, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    invoke-virtual {v3, v2}, La/b/a/m/a/l;->a(Z)V

    .line 6
    iget-object v2, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    invoke-virtual {v2}, La/b/a/m/a/l;->d()V

    .line 7
    iget-object v2, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    .line 8
    iget-object v3, v2, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_4

    .line 9
    iget-object v4, v2, La/b/a/m/a/m;->L:Landroid/hardware/SensorEventListener;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 11
    iput-object v5, v2, La/b/a/m/a/m;->L:Landroid/hardware/SensorEventListener;

    .line 12
    :cond_0
    iget-object v3, v2, La/b/a/m/a/m;->M:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_1

    .line 13
    iget-object v4, v2, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 14
    iput-object v5, v2, La/b/a/m/a/m;->M:Landroid/hardware/SensorEventListener;

    .line 15
    :cond_1
    iget-object v3, v2, La/b/a/m/a/m;->O:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_2

    .line 16
    iget-object v4, v2, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 17
    iput-object v5, v2, La/b/a/m/a/m;->O:Landroid/hardware/SensorEventListener;

    .line 18
    :cond_2
    iget-object v3, v2, La/b/a/m/a/m;->N:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_3

    .line 19
    iget-object v4, v2, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 20
    iput-object v5, v2, La/b/a/m/a/m;->N:Landroid/hardware/SensorEventListener;

    .line 21
    :cond_3
    iput-object v5, v2, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    .line 22
    :cond_4
    sget-object v3, La/b/a/e;->a:La/b/a/a;

    const-string v4, "AndroidInput"

    const-string v5, "sensor listener tear down"

    invoke-interface {v3, v4, v5}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, v2, La/b/a/m/a/m;->l:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 24
    iget-object v2, v2, La/b/a/m/a/m;->j:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    iget-object v2, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 27
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 28
    sget-object v4, La/b/a/o/f;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 30
    sget-object v4, La/b/a/o/i;->h:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 32
    sget-object v4, La/b/a/o/c;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 34
    sget-object v4, La/b/a/o/j;->h:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 36
    sget-object v4, La/b/a/o/n/i;->f:La/b/a/r/j;

    invoke-virtual {v4, v3}, La/b/a/r/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v3, v2, La/b/a/m/a/l;->d:La/b/a/m/a/c;

    .line 38
    sget-object v4, La/b/a/o/n/c;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v2}, La/b/a/m/a/l;->c()V

    .line 40
    iget-object v2, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    invoke-virtual {v2}, La/b/a/m/a/l;->a()V

    .line 41
    :cond_5
    sput-boolean v1, La/b/a/m/a/l;->y:Z

    .line 42
    iget-object v1, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    invoke-virtual {v1, v0}, La/b/a/m/a/l;->a(Z)V

    .line 43
    iget-object v0, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 44
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 45
    instance-of v2, v1, La/b/a/m/a/y/d;

    if-eqz v2, :cond_6

    check-cast v1, La/b/a/m/a/y/d;

    .line 46
    iget-object v1, v1, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v1}, La/b/a/m/a/y/d$i;->c()V

    .line 47
    :cond_6
    iget-object v0, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 48
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    sput-object p0, La/b/a/e;->a:La/b/a/a;

    .line 2
    iget-object v0, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    .line 3
    sput-object v0, La/b/a/e;->d:La/b/a/g;

    .line 4
    iget-object v1, p0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    .line 5
    sput-object v1, La/b/a/e;->c:La/b/a/c;

    .line 6
    iget-object v1, p0, La/b/a/m/a/b;->files:La/b/a/m/a/i;

    .line 7
    sput-object v1, La/b/a/e;->e:La/b/a/d;

    .line 8
    iget-object v1, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 9
    sput-object v1, La/b/a/e;->b:La/b/a/f;

    .line 10
    iget-object v1, p0, La/b/a/m/a/b;->net:La/b/a/m/a/s;

    .line 11
    sput-object v1, La/b/a/e;->f:La/b/a/j;

    .line 12
    iget-object v1, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget-boolean v1, v1, La/b/a/m/a/d;->h:Z

    const-string v2, "sensor"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, v0, La/b/a/m/a/m;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    .line 14
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    iput-boolean v4, v0, La/b/a/m/a/m;->t:Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 17
    new-instance v5, La/b/a/m/a/m$d;

    invoke-direct {v5, v0}, La/b/a/m/a/m$d;-><init>(La/b/a/m/a/m;)V

    iput-object v5, v0, La/b/a/m/a/m;->L:Landroid/hardware/SensorEventListener;

    .line 18
    iget-object v6, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    iget-object v7, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget v7, v7, La/b/a/m/a/d;->l:I

    invoke-virtual {v6, v5, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, v0, La/b/a/m/a/m;->t:Z

    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v4, v0, La/b/a/m/a/m;->t:Z

    .line 20
    :goto_0
    iget-object v1, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget-boolean v1, v1, La/b/a/m/a/d;->i:Z

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, v0, La/b/a/m/a/m;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    const/4 v5, 0x4

    .line 22
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 24
    new-instance v5, La/b/a/m/a/m$d;

    invoke-direct {v5, v0}, La/b/a/m/a/m$d;-><init>(La/b/a/m/a/m;)V

    iput-object v5, v0, La/b/a/m/a/m;->M:Landroid/hardware/SensorEventListener;

    .line 25
    iget-object v6, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    iget-object v7, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget v7, v7, La/b/a/m/a/d;->l:I

    invoke-virtual {v6, v5, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 26
    :cond_3
    :goto_1
    iput-boolean v4, v0, La/b/a/m/a/m;->D:Z

    .line 27
    iget-object v1, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget-boolean v1, v1, La/b/a/m/a/d;->k:Z

    if-eqz v1, :cond_7

    .line 28
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    if-nez v1, :cond_4

    iget-object v1, v0, La/b/a/m/a/m;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    .line 29
    :cond_4
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 31
    new-instance v5, La/b/a/m/a/m$d;

    invoke-direct {v5, v0}, La/b/a/m/a/m$d;-><init>(La/b/a/m/a/m;)V

    iput-object v5, v0, La/b/a/m/a/m;->O:Landroid/hardware/SensorEventListener;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 33
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Google Inc."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getVersion()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 34
    iget-object v5, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    iget-object v7, v0, La/b/a/m/a/m;->O:Landroid/hardware/SensorEventListener;

    iget-object v8, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget v8, v8, La/b/a/m/a/d;->l:I

    invoke-virtual {v5, v7, v6, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v5

    iput-boolean v5, v0, La/b/a/m/a/m;->D:Z

    .line 35
    :cond_6
    iget-boolean v5, v0, La/b/a/m/a/m;->D:Z

    if-nez v5, :cond_7

    .line 36
    iget-object v5, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    iget-object v6, v0, La/b/a/m/a/m;->O:Landroid/hardware/SensorEventListener;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v7, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget v7, v7, La/b/a/m/a/d;->l:I

    invoke-virtual {v5, v6, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, v0, La/b/a/m/a/m;->D:Z

    .line 37
    :cond_7
    iget-object v1, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget-boolean v1, v1, La/b/a/m/a/d;->j:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, La/b/a/m/a/m;->D:Z

    if-nez v1, :cond_a

    .line 38
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    if-nez v1, :cond_8

    iget-object v1, v0, La/b/a/m/a/m;->x:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    .line 39
    :cond_8
    iget-object v1, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    iget-boolean v2, v0, La/b/a/m/a/m;->t:Z

    iput-boolean v2, v0, La/b/a/m/a/m;->C:Z

    if-eqz v2, :cond_b

    .line 41
    new-instance v2, La/b/a/m/a/m$d;

    invoke-direct {v2, v0}, La/b/a/m/a/m$d;-><init>(La/b/a/m/a/m;)V

    iput-object v2, v0, La/b/a/m/a/m;->N:Landroid/hardware/SensorEventListener;

    .line 42
    iget-object v5, v0, La/b/a/m/a/m;->s:Landroid/hardware/SensorManager;

    iget-object v6, v0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    iget v6, v6, La/b/a/m/a/d;->l:I

    invoke-virtual {v5, v2, v1, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, v0, La/b/a/m/a/m;->C:Z

    goto :goto_2

    .line 43
    :cond_9
    iput-boolean v4, v0, La/b/a/m/a/m;->C:Z

    goto :goto_2

    .line 44
    :cond_a
    iput-boolean v4, v0, La/b/a/m/a/m;->C:Z

    .line 45
    :cond_b
    :goto_2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener setup"

    invoke-interface {v0, v1, v2}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    if-eqz v0, :cond_d

    .line 47
    iget-object v1, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 48
    instance-of v2, v1, La/b/a/m/a/y/d;

    if-eqz v2, :cond_c

    check-cast v1, La/b/a/m/a/y/d;

    .line 49
    iget-object v1, v1, La/b/a/m/a/y/d;->b:La/b/a/m/a/y/d$i;

    invoke-virtual {v1}, La/b/a/m/a/y/d$i;->d()V

    .line 50
    :cond_c
    iget-object v0, v0, La/b/a/m/a/l;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 51
    :cond_d
    iget-boolean v0, p0, La/b/a/m/a/b;->firstResume:Z

    if-nez v0, :cond_e

    .line 52
    iget-object v0, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    invoke-virtual {v0}, La/b/a/m/a/l;->f()V

    goto :goto_3

    .line 53
    :cond_e
    iput-boolean v4, p0, La/b/a/m/a/b;->firstResume:Z

    .line 54
    :goto_3
    iput-boolean v3, p0, La/b/a/m/a/b;->isWaitingForAudio:Z

    .line 55
    iget v0, p0, La/b/a/m/a/b;->wasFocusChanged:I

    if-eq v0, v3, :cond_f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 56
    :cond_f
    iget-object v0, p0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    invoke-virtual {v0}, La/b/a/m/a/f;->c()V

    .line 57
    iput-boolean v4, p0, La/b/a/m/a/b;->isWaitingForAudio:Z

    .line 58
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-boolean v0, p0, La/b/a/m/a/b;->useImmersiveMode:Z

    invoke-virtual {p0, v0}, La/b/a/m/a/b;->useImmersiveMode(Z)V

    .line 3
    iget-boolean v0, p0, La/b/a/m/a/b;->hideStatusBar:Z

    invoke-virtual {p0, v0}, La/b/a/m/a/b;->hideStatusBar(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, La/b/a/m/a/b;->wasFocusChanged:I

    .line 5
    iget-boolean p1, p0, La/b/a/m/a/b;->isWaitingForAudio:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    invoke-virtual {p1}, La/b/a/m/a/f;->c()V

    .line 7
    iput-boolean v0, p0, La/b/a/m/a/b;->isWaitingForAudio:Z

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, La/b/a/m/a/b;->wasFocusChanged:I

    :cond_1
    :goto_0
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/b;->runnables:La/b/a/r/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, La/b/a/m/a/b;->runnables:La/b/a/r/a;

    invoke-virtual {v1, p1}, La/b/a/r/a;->add(Ljava/lang/Object;)V

    .line 3
    sget-object p1, La/b/a/e;->b:La/b/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, La/b/a/m/a/l;

    :try_start_1
    invoke-virtual {p1}, La/b/a/m/a/l;->e()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public useImmersiveMode(Z)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/16 v1, 0x1706

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AndroidApplication"

    const-string v1, "Can\'t set immersive mode"

    .line 5
    invoke-virtual {p0, v0, v1, p1}, La/b/a/m/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
