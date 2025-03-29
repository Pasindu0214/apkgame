.class public Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;
.super Ljava/lang/Object;
.source "GitHubUpdates.java"

# interfaces
.implements La/b/a/j$c;


# instance fields
.field public final synthetic val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljavax/net/ssl/SSLProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    goto :goto_0

    .line 4
    :cond_0
    throw v1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    :goto_0
    return-void

    .line 8
    :cond_2
    throw v1
.end method

.method public handleHttpResponse(La/b/a/j$b;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget v2, Lcom/watabou/noosa/Game;->versionCode:I

    .line 2
    sget-object v3, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "beta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 3
    check-cast p1, La/b/a/q/a$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_7

    .line 4
    :try_start_1
    iget-object v4, p1, La/b/a/q/a$b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 5
    :catch_0
    :try_start_2
    iget-object p1, p1, La/b/a/q/a$b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/watabou/utils/Bundle;->read(Ljava/io/InputStream;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    const-string v4, "key"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :try_start_3
    iget-object p1, p1, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p1, v4}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v4

    .line 9
    new-array v5, v4, [Lcom/watabou/utils/Bundle;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    .line 10
    new-instance v7, Lcom/watabou/utils/Bundle;

    invoke-virtual {p1, v6}, Lb/a/a;->d(I)Lb/a/c;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/watabou/utils/Bundle;-><init>(Lb/a/c;)V

    aput-object v7, v5, v6
    :try_end_3
    .catch Lb/a/b; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    :try_start_4
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    move-object v5, v1

    .line 12
    :cond_0
    array-length p1, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v6, v1

    const/4 v4, 0x0

    :goto_2
    const-string v7, "body"

    const/4 v8, 0x1

    if-ge v4, p1, :cond_3

    :try_start_5
    aget-object v9, v5, v4

    .line 13
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;->versionCodePattern:Ljava/util/regex/Pattern;

    .line 14
    invoke-virtual {v9, v7}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v2, :cond_2

    if-nez v3, :cond_1

    const-string v8, "prerelease"

    .line 17
    invoke-virtual {v9, v8}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move v2, v7

    move-object v6, v9

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-nez v6, :cond_5

    .line 18
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    if-eqz p1, :cond_4

    .line 19
    sput-boolean v8, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    goto :goto_3

    .line 20
    :cond_4
    throw v1

    .line 21
    :cond_5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;-><init>()V

    const-string v2, "name"

    .line 22
    invoke-virtual {v6, v2}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->versionName:Ljava/lang/String;

    .line 23
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;->descPattern:Ljava/util/regex/Pattern;

    .line 24
    invoke-virtual {v6, v7}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 26
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->desc:Ljava/lang/String;

    const-string v2, "html_url"

    .line 27
    invoke-virtual {v6, v2}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->URL:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    if-eqz v2, :cond_6

    .line 29
    sput-boolean v8, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    .line 30
    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateData:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    goto :goto_3

    .line 31
    :cond_6
    throw v1

    .line 32
    :cond_7
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 34
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates$1;->val$callback:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService$UpdateResultCallback;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates$1;

    if-eqz p1, :cond_8

    .line 35
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->updateChecked:Z

    :goto_3
    return-void

    .line 36
    :cond_8
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
