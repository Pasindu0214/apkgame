.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->onClick()V

    .line 2
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked(Z)V

    .line 4
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 5
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "saver"

    .line 6
    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "saver_desc"

    .line 7
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "okay"

    .line 8
    invoke-static {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "cancel"

    .line 9
    invoke-static {v0, v8, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$2;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    :cond_0
    const-string v0, "power_saver"

    .line 11
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 12
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->updateDisplaySize()V

    :goto_0
    return-void
.end method
