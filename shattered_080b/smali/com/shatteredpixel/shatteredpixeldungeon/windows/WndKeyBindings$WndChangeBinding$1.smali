.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    new-instance v1, Lcom/watabou/input/KeyEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/watabou/input/KeyEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->onSignal(Lcom/watabou/input/KeyEvent;)Z

    return-void
.end method
