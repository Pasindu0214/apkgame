.class public Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;
.super Ljava/lang/Object;
.source "GLog.java"


# static fields
.field public static update:Lcom/watabou/utils/Signal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/watabou/utils/Signal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/watabou/utils/Signal;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/watabou/utils/Signal;-><init>(Z)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->update:Lcom/watabou/utils/Signal;

    return-void
.end method

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    const-string v0, "GAME"

    invoke-interface {p1, v0, p0}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->update:Lcom/watabou/utils/Signal;

    invoke-virtual {p1, p0}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs n(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static newLine()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->update:Lcom/watabou/utils/Signal;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lcom/watabou/utils/Signal;->dispatch(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs p(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
