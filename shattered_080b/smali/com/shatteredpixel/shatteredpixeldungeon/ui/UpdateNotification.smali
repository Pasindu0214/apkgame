.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;
.source "UpdateNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->GREY_BUTTON_TR:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "title"

    invoke-static {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    .line 2
    invoke-direct {p0, v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    const v0, 0x33bb33

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 4
    iput-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->service:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_f

    .line 6
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 7
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->service:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    invoke-direct {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;-><init>()V

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    .line 8
    sget-object v6, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    if-eqz v6, :cond_d

    .line 9
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 10
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 11
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    xor-int/2addr v3, v1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v7, v1, :cond_3

    .line 15
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_3

    .line 16
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_3

    .line 17
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    .line 18
    sput-boolean v2, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    .line 19
    :cond_5
    new-instance v3, La/b/a/j$a;

    const-string v6, "GET"

    invoke-direct {v3, v6}, La/b/a/j$a;-><init>(Ljava/lang/String;)V

    const-string v7, "https://api.github.com/repos/00-Evan/shattered-pixel-dungeon/releases"

    .line 20
    iput-object v7, v3, La/b/a/j$a;->b:Ljava/lang/String;

    .line 21
    iget-object v7, v3, La/b/a/j$a;->c:Ljava/util/Map;

    const-string v8, "Accept"

    const-string v9, "application/vnd.github.v3+json"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v7, La/b/a/e;->f:La/b/a/j;

    new-instance v12, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;

    invoke-direct {v12, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;)V

    check-cast v7, La/b/a/m/a/s;

    .line 23
    iget-object v0, v7, La/b/a/m/a/s;->b:La/b/a/q/a;

    if-eqz v0, :cond_c

    .line 24
    iget-object v4, v3, La/b/a/j$a;->b:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 25
    new-instance v0, La/b/a/r/d;

    const-string v1, "can\'t process a HTTP request without URL set"

    invoke-direct {v0, v1}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v0}, La/b/a/j$c;->failed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 26
    :cond_6
    :try_start_0
    iget-object v4, v3, La/b/a/j$a;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    iget-object v5, v3, La/b/a/j$a;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_7

    .line 29
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    :cond_7
    new-instance v5, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    iget-object v8, v3, La/b/a/j$a;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_8
    new-instance v5, Ljava/net/URL;

    .line 34
    iget-object v6, v3, La/b/a/j$a;->b:Ljava/lang/String;

    .line 35
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    :goto_2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/net/HttpURLConnection;

    const-string v5, "POST"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "PATCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v8, 0x1

    .line 38
    :goto_4
    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 39
    invoke-virtual {v10, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 40
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    iget-boolean v1, v3, La/b/a/j$a;->g:Z

    .line 42
    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 43
    invoke-virtual {v0, v3, v12, v10}, La/b/a/q/a;->a(La/b/a/j$a;La/b/a/j$c;Ljava/net/HttpURLConnection;)V

    .line 44
    iget-object v1, v3, La/b/a/j$a;->c:Ljava/util/Map;

    .line 45
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v4, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 47
    :cond_b
    iget v1, v3, La/b/a/j$a;->d:I

    .line 48
    invoke-virtual {v10, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    iget v1, v3, La/b/a/j$a;->d:I

    .line 50
    invoke-virtual {v10, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 51
    iget-object v1, v0, La/b/a/q/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, La/b/a/q/b;

    move-object v6, v2

    move-object v7, v0

    move-object v9, v3

    move-object v11, v12

    invoke-direct/range {v6 .. v11}, La/b/a/q/b;-><init>(La/b/a/q/a;ZLa/b/a/j$a;Ljava/net/HttpURLConnection;La/b/a/j$c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 52
    :try_start_2
    invoke-interface {v12, v1}, La/b/a/j$c;->failed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-virtual {v0, v3}, La/b/a/q/a;->b(La/b/a/j$a;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v3}, La/b/a/q/a;->b(La/b/a/j$a;)V

    throw v1

    .line 54
    :cond_c
    throw v5

    .line 55
    :cond_d
    throw v5

    .line 56
    :cond_e
    throw v5

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateData:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateData:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    .line 5
    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_1
    return-void
.end method

.method public update()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateData:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->bg:Lcom/watabou/noosa/NinePatch;

    sget v1, Lcom/watabou/noosa/Game;->timeTotal:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double v4, v4, v6

    const-wide v8, 0x3fe6666660000000L    # 0.699999988079071

    add-double/2addr v4, v8

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget v1, Lcom/watabou/noosa/Game;->timeTotal:F

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v6

    add-double/2addr v3, v8

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->alpha(F)V

    .line 5
    iput-boolean v2, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :goto_1
    return-void
.end method
