.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;-><init>(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Toast;->onClose()V

    return-void
.end method
