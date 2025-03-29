.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab$4;
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
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    const-string v1, "brightness"

    .line 2
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    return-void
.end method
