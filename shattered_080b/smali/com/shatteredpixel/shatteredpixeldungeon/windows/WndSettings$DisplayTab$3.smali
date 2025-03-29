.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
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
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "landscape"

    .line 2
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 3
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->updateDisplaySize()V

    return-void
.end method
