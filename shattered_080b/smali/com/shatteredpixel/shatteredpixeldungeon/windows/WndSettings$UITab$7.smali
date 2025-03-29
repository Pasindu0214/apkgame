.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;
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
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->onClick()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V

    return-void
.end method
