.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "IntroScene.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene;

    const-string v3, "text"

    invoke-static {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method
