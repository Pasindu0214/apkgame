.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene$5;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "ChangesScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    sput v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;->changesSelected:I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->seamlessResetScene(Lcom/watabou/noosa/Game$SceneChangeCallback;)V

    :cond_0
    return-void
.end method
