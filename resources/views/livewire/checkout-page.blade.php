<div class="w-full max-w-[85rem] py-10 px-4 sm:px-6 lg:px-8 mx-auto">
	<h1 class="text-2xl font-bold text-gray-800 dark:text-white mb-4 text-center">
		Thanh toán
	</h1>
	<form wire:submit.prevent='placeOrder'>
		<div class="grid grid-cols-12 gap-4">
			<div class="md:col-span-12 lg:col-span-8 col-span-12">
				<div class="bg-white rounded-xl shadow p-4 sm:p-7 dark:bg-slate-900">
					<div class="mb-6">
						<h2 class="text-xl font-bold underline text-gray-700 dark:text-white mb-2">
							Địa chỉ vận chuyển
						</h2>
						<div class="grid grid-cols-2 gap-4">
							<div>
								<label class="block text-gray-700 dark:text-white mb-1" for="first_name">
									Họ và tên đệm
								</label>
								<input wire:model='first_name'
									class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
									id="first_name" type="text">
								@error('first_name')
									<div class="text-red-500 text-sm">{{$message}}</div>
								@enderror
							</div>
							<div>
								<label class="block text-gray-700 dark:text-white mb-1" for="last_name">
									Tên
								</label>
								<input wire:model='last_name'
									class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
									id="last_name" type="text">
									@error('last_name')
									<div class="text-red-500 text-sm">{{$message}}</div>
								@enderror
							</div>
						</div>
						<div class="mt-4">
							<label class="block text-gray-700 dark:text-white mb-1" for="phone">
								Số điện thoại
							</label>
							<input wire:model='phone'
								class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
								id="phone" type="text">
								@error('phone')
								<div class="text-red-500 text-sm">{{$message}}</div>
							@enderror
						</div>
						<div class="mt-4">
							<label class="block text-gray-700 dark:text-white mb-1" for="address">
								Địa chỉ
							</label>
							<input wire:model='street_address'
								class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
								id="address" type="text">
								@error('street_address')
								<div class="text-red-500 text-sm">{{$message}}</div>
							@enderror
						</div>
						<div class="mt-4">
							<label class="block text-gray-700 dark:text-white mb-1" for="state">
								Quận, huyện
							</label>
							<input wire:model='state'
								class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
								id="state" type="text">
								@error('state')
								<div class="text-red-500 text-sm">{{$message}}</div>
							@enderror

						</div>
						<div class="grid grid-cols-2 gap-4 mt-4">
							<div>
								<label class="block text-gray-700 dark:text-white mb-1" for="city">
									Thành phố
								</label>
								<input wire:model='city'
									class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
									id="city" type="text">
									@error('city')
									<div class="text-red-500 text-sm">{{$message}}</div>
								@enderror
							</div>
							<div>
								<label class="block text-gray-700 dark:text-white mb-1" for="zip">
									ZIP Code
								</label>
								<input wire:model='zip_code'
									class="w-full rounded-lg border py-2 px-3 dark:bg-gray-700 dark:text-white dark:border-none @error('first_name') border-red-500 @enderror"
									id="zip" type="text">
									@error('zip_code')
									<div class="text-red-500 text-sm">{{$message}}</div>
								@enderror
							</div>
						</div>
					</div>
					<div class="text-lg font-semibold mb-4">
						Chọn phương thức thanh toán
					</div>
					<ul class="grid w-full gap-6 md:grid-cols-2">
						<li>
							<input wire:model='payment_method' class="hidden peer" id="hosting-small" required=""
								type="radio" value="cod" />
							<label
								class="inline-flex items-center justify-between w-full p-5 text-gray-500 bg-white border border-gray-200 rounded-lg cursor-pointer dark:hover:text-gray-300 dark:border-gray-700 dark:peer-checked:text-blue-500 peer-checked:border-blue-600 peer-checked:text-blue-600 hover:text-gray-600 hover:bg-gray-100 dark:text-gray-400 dark:bg-gray-800 dark:hover:bg-gray-700"
								for="hosting-small">
								<div class="block">
									<div class="w-full text-lg font-semibold">
										Thanh toán khi nhận hàng
									</div>
								</div>
								<svg aria-hidden="true" class="w-5 h-5 ms-3 rtl:rotate-180" fill="none"
									viewbox="0 0 14 10" xmlns="http://www.w3.org/2000/svg">
									<path d="M1 5h12m0 0L9 1m4 4L9 9" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2">
									</path>
								</svg>
							</label>
						</li>
						<li>
							<input wire:model='payment_method' class="hidden peer" id="hosting-big" type="radio"
								value="stripe">
							<label
								class="inline-flex items-center justify-between w-full p-5 text-gray-500 bg-white border border-gray-200 rounded-lg cursor-pointer dark:hover:text-gray-300 dark:border-gray-700 dark:peer-checked:text-blue-500 peer-checked:border-blue-600 peer-checked:text-blue-600 hover:text-gray-600 hover:bg-gray-100 dark:text-gray-400 dark:bg-gray-800 dark:hover:bg-gray-700"
								for="hosting-big">
								<div class="block">
									<div class="w-full text-lg font-semibold">
										Thanh toán qua thẻ Stripe
									</div>
								</div>
								<svg aria-hidden="true" class="w-5 h-5 ms-3 rtl:rotate-180" fill="none"
									viewbox="0 0 14 10" xmlns="http://www.w3.org/2000/svg">
									<path d="M1 5h12m0 0L9 1m4 4L9 9" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2">
									</path>
								</svg>
							</label>
						</li>
					</ul>
					@error('payment_method')
						<div class="text-red-500 text-sm">{{$message}}</div>
					@enderror
				</div>
				<!-- End Card -->
			</div>
			<div class="md:col-span-12 lg:col-span-4 col-span-12">
				<div class="bg-white rounded-xl shadow p-4 sm:p-7 dark:bg-slate-900">
					<div class="text-xl font-bold underline text-gray-700 dark:text-white mb-2">
						TỔNG HÓA ĐƠN
					</div>
					<div class="flex justify-between mb-2 font-bold">
						<span>
							Tổng sản phẩm
						</span>
						<span>
							{{ number_format($grand_total, 0, ',', '.') }}₫
						</span>
					</div>
					<div class="flex justify-between mb-2 font-bold">
						<span>
							Thuế
						</span>
						<span>
							{{ number_format(0, 0, ',', '.') }}₫
						</span>
					</div>
					<div class="flex justify-between mb-2 font-bold">
						<span>
							Phí vận chuyển
						</span>
						<span>
							{{ number_format(0, 0, ',', '.') }}₫
						</span>
					</div>
					<hr class="bg-slate-400 my-4 h-1 rounded">
					<div class="flex justify-between mb-2 font-bold">
						<span>
							Thành tiền
						</span>
						<span>
							{{ number_format($grand_total, 0, ',', '.') }}₫
						</span>
					</div>
					</hr>
				</div>
				<button type="submit"
					class="bg-green-500 mt-4 w-full p-3 rounded-lg text-lg text-white hover:bg-green-600">
					<span wire:loading.remove>Xác nhận thanh toán</span>
					<span wire:loading>Đang chuyển hướng...</span>
				</button>
				<div class="bg-white mt-4 rounded-xl shadow p-4 sm:p-7 dark:bg-slate-900">
					<div class="text-xl font-bold underline text-gray-700 dark:text-white mb-2">
						Danh sách sản phẩm
					</div>
					<ul class="divide-y divide-gray-200 dark:divide-gray-700" role="list">
						@foreach ($cart_items as $it)
							<li class="py-3 sm:py-4" wire:key='{{$it['product_id']}}'>
								<div class="flex items-center">
									<div class="flex-shrink-0">
										<img alt="{{$it['name']}}" class="w-12 h-12 rounded-full"
											src="{{url('storage', $it['image'])}}">
									</div>
									<div class="flex-1 min-w-0 ms-4">
										<p class="text-sm font-medium text-gray-900 truncate dark:text-white">
											{{$it['name']}}
										</p>
										<p class="text-sm text-gray-500 truncate dark:text-gray-400">
											Quantity: {{$it['quantity']}}
										</p>
									</div>
									<div
										class="inline-flex items-center text-base font-semibold text-gray-900 dark:text-white">
										{{ number_format($it['total_amount'], 0, ',', '.') }}₫
									</div>
								</div>
							</li>
						@endforeach

					</ul>
				</div>
			</div>
		</div>
	</form>
</div>