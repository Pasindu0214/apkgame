.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$10;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "CursedWand.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onSelect(I)V
    .locals 0

    .line 1
    sget-object p1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, La/b/a/e;->a:La/b/a/a;

    invoke-interface {p1}, La/b/a/a;->exit()V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
