.class public Lcom/watabou/utils/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"


# static fields
.field public static aliases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:Lb/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/c;

    invoke-direct {v0}, Lb/a/c;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    return-void
.end method

.method public constructor <init>(Lb/a/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    return-void
.end method

.method public static read(Ljava/io/InputStream;)Lcom/watabou/utils/Bundle;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v1, [B

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 v1, 0x0

    .line 6
    aget-byte v1, v0, v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, -0x75

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    .line 8
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    new-instance p0, Lb/a/e;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/e;->d()Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 11
    instance-of v0, p0, Lb/a/a;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lb/a/c;

    invoke-direct {v0}, Lb/a/c;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    move-object p0, v0

    .line 13
    :cond_2
    new-instance v0, Lcom/watabou/utils/Bundle;

    check-cast p0, Lb/a/c;

    invoke-direct {v0, p0}, Lcom/watabou/utils/Bundle;-><init>(Lb/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 15
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method public static write(Lcom/watabou/utils/Bundle;Ljava/io/OutputStream;)Z
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, p1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    iget-object p0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p0}, Lb/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    .line 2
    sget-object v1, Lb/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lb/a/c;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final get()Lcom/watabou/utils/Bundlable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "__className"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/watabou/utils/Bundlable;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p0}, Lcom/watabou/utils/Bundlable;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lb/a/c;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v0

    .line 3
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lb/a/a;->a(I)Z

    move-result v3

    aput-boolean v3, v1, v2
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    iget-object v1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    .line 2
    invoke-virtual {v1, p1}, Lb/a/c;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lb/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lb/a/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-direct {v0, p1}, Lcom/watabou/utils/Bundle;-><init>(Lb/a/c;)V

    return-object v0
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/watabou/utils/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "class "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassArray(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Lb/a/a;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "class "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v4, Lcom/watabou/utils/Bundle;->aliases:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    :cond_0
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 8
    aput-object v3, v1, v2
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCollection(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/watabou/utils/Bundlable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v1, p1}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-virtual {p1, v1}, Lb/a/a;->d(I)Lb/a/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/watabou/utils/Bundle;-><init>(Lb/a/c;)V

    invoke-virtual {v2}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v1, p1}, Lb/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    aget-object p1, p1, v0

    return-object p1

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lb/a/c;->c(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    double-to-float p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lb/a/c;->d(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v0

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lb/a/a;->c(I)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object v0, Lb/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1}, Lb/a/c;->e(Ljava/lang/String;)Lb/a/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lb/a/a;->a()I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lb/a/a;->e(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/String;F)V
    .locals 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    float-to-double v1, p2

    if-eqz v0, :cond_0

    .line 9
    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 17
    :try_start_0
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    const-string v1, "__className"

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {p2, v0}, Lcom/watabou/utils/Bundlable;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 20
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    iget-object v0, v0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    iget-object p2, p2, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/watabou/utils/Bundlable;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :cond_1
    new-instance v3, Lcom/watabou/utils/Bundle;

    invoke-direct {v3}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "__className"

    invoke-virtual {v3, v4, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1, v3}, Lcom/watabou/utils/Bundlable;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 54
    iget-object v1, v3, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    .line 55
    iget-object v2, v0, Lb/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;[I)V
    .locals 4

    .line 24
    :try_start_0
    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 26
    aget v2, p2, v1

    .line 27
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lb/a/a;->a(ILjava/lang/Object;)Lb/a/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    const/4 v1, 0x0

    .line 42
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 43
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/a;->a(ILjava/lang/Object;)Lb/a/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 36
    :try_start_0
    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 38
    aget-object v2, p2, v1

    invoke-virtual {v0, v1, v2}, Lb/a/a;->a(ILjava/lang/Object;)Lb/a/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public put(Ljava/lang/String;[Z)V
    .locals 3

    .line 30
    :try_start_0
    new-instance v0, Lb/a/a;

    invoke-direct {v0}, Lb/a/a;-><init>()V

    const/4 v1, 0x0

    .line 31
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 32
    aget-boolean v2, p2, v1

    if-eqz v2, :cond_0

    .line 33
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lb/a/a;->a(ILjava/lang/Object;)Lb/a/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {p2, p1, v0}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;
    :try_end_0
    .catch Lb/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;

    invoke-virtual {v0}, Lb/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
