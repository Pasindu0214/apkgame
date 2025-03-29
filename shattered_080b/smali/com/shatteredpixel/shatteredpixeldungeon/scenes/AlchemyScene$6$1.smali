.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;-><init>()V

    .line 3
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    const/16 v1, 0x82

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    const/16 v1, 0xb4

    .line 4
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
