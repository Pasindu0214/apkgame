.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;
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
.field public final synthetic val$all:[Ljava/lang/Class;

.field public final synthetic val$guess:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public final synthetic val$j:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess;Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;[Ljava/lang/Class;ILcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$all:[Ljava/lang/Class;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$j:I

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$guess:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$all:[Ljava/lang/Class;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$j:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition;->curGuess:Ljava/lang/Class;

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$guess:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/watabou/noosa/Gizmo;->visible:Z

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "name"

    .line 3
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->layout()V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfIntuition$WndGuess$2;->val$guess:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    return-void
.end method
