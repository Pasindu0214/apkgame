.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;
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
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    const/4 v1, 0x0

    const-string v2, "scale"

    .line 2
    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    .line 4
    invoke-static {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V

    :cond_0
    return-void
.end method
