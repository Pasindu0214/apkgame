.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;->val$index:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;->onSelect(I)V

    return-void
.end method
