.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$1;
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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;->SPLIT:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar$Mode;

    const-string v0, "SPLIT"

    const-string v1, "toolbar_mode"

    .line 2
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toolbar;->updateLayout()V

    return-void
.end method
