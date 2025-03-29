.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$8;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;-><init>()V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
