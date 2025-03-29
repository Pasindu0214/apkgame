.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->prompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->cancel()Z

    return-void
.end method
