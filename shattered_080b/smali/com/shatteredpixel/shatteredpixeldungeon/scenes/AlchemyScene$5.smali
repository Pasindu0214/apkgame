.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$5;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ExitButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
