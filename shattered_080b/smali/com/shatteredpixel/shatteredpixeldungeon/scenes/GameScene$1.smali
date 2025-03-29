.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$1;
.super Lcom/watabou/noosa/SkinnedBlock;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;FFLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/SkinnedBlock;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->disable()V

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/Image;->draw()V

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->enable()V

    return-void
.end method

.method public script()Lcom/watabou/noosa/NoosaScript;
    .locals 1

    .line 1
    invoke-static {}, Lcom/watabou/noosa/NoosaScriptNoLighting;->get()Lcom/watabou/noosa/NoosaScriptNoLighting;

    move-result-object v0

    return-object v0
.end method
