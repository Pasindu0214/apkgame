.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;
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
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;->val$previousVersion:I

    const/16 p1, 0x9

    .line 2
    invoke-direct {p0, p2, p3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene$3;->val$previousVersion:I

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/WelcomeScene;I)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/ChangesScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
