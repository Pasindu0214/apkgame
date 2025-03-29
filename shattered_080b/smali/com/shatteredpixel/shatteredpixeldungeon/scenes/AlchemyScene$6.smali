.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->clearSlots()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->updateState()V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
