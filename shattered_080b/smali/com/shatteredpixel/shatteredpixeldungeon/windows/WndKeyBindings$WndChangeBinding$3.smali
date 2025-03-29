.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$3;
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
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$3;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$3;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
