.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$6;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;
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
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->onClick()V

    .line 2
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    const-string v1, "fullscreen"

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 4
    sget-object v0, Lcom/watabou/noosa/Game;->platform:Lcom/watabou/utils/PlatformSupport;

    invoke-virtual {v0}, Lcom/watabou/utils/PlatformSupport;->updateSystemUI()V

    return-void
.end method
