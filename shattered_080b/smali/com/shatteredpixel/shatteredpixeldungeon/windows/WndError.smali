.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.source "WndError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->WARNING:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 3
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "title"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
