.class public La/b/a/r/n;
.super La/b/a/r/l;
.source "ReflectionPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/r/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:La/b/a/r/s/a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, La/b/a/r/l;-><init>(II)V

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p2}, La/b/a/e;->a(Ljava/lang/Class;[Ljava/lang/Class;)La/b/a/r/s/a;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    :try_start_1
    invoke-static {p1, p2}, La/b/a/e;->b(Ljava/lang/Class;[Ljava/lang/Class;)La/b/a/r/s/a;

    move-result-object p3

    const/4 v0, 0x1

    .line 4
    iget-object v1, p3, La/b/a/r/s/a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch La/b/a/r/s/b; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, p3

    goto :goto_0

    :catch_1
    nop

    .line 5
    :goto_0
    iput-object p2, p0, La/b/a/r/n;->d:La/b/a/r/s/a;

    if-eqz p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Class cannot be created (missing no-arg constructor): "

    invoke-static {p3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/a/r/n;->d:La/b/a/r/s/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/b/a/r/s/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, La/b/a/r/d;

    const-string v2, "Unable to create new instance: "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, La/b/a/r/n;->d:La/b/a/r/s/a;

    invoke-virtual {v3}, La/b/a/r/s/a;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
