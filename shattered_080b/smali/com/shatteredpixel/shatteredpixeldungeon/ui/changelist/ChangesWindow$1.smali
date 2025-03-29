.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow$1;
.super Lcom/watabou/noosa/PointerArea;
.source "ChangesWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/ChangesWindow;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
