.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "StoneOfIntuition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/InventoryStone;->useAnimation()V

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->curGuess:Ljava/lang/Class;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "correct"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, -0x3e800000    # -16.0f

    invoke-virtual {v0, v3, v4}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Identification;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "incorrect"

    .line 7
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->curGuess:Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
