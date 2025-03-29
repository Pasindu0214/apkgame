.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V
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
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/OptionSlider;->selectedVal:I

    .line 2
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    int-to-float v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 3
    iput v2, v1, Lcom/watabou/noosa/audio/Sample;->globalVolume:F

    const-string v1, "sfx_vol"

    .line 4
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    return-void
.end method
