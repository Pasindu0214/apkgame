.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;
.source "WelcomeScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

.field public final synthetic val$previousVersion:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;->val$previousVersion:I

    const/16 p1, 0x9

    .line 2
    invoke-direct {p0, p2, p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;->val$previousVersion:I

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->versionCode:I

    const-string v1, "version"

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;I)V

    .line 6
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
