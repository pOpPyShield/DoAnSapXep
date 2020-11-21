<style>
    #btnScrollToTop {
        position: fixed;
        right: 10px;
        bottom: 10px;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background: green;
        box-shadow: 0 0 10px rgba(0,0,0, 0.25);
        color:#ffffff;
        outline: none;
        border: none;
        cursor: pointer;
    }
    #btnScrollToTop:active{
        background: #90ee90;
    }
</style>



<button id="btnScrollToTop">
    <i class="material-icons">arrow_upward</i>
</button>
<script>
    const btnScrollToTop = document.querySelector('#btnScrollToTop');
    btnScrollToTop.addEventListener("click", function() {
        window.scrollTo({
            top:50,
            left:0,
            behavior: "smooth"

        });
        //$("html, body").animate ({ scrollTop: 0}, "slow");
    });
</script>