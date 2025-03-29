.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory$1;
.super Lcom/watabou/noosa/PointerArea;
.source "WndStory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;Lcom/watabou/noosa/Visual;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;

    invoke-direct {p0, p2}, Lcom/watabou/noosa/PointerArea;-><init>(Lcom/watabou/noosa/Visual;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStory;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
